## Fabric Deployment
#
#deploy the site using fabric. here is some details about the fabric file used in this project.
#
### Environment Options
#
#
#* SERVER: This is the server to ssh into 
#* SERVER_NAME: Used to configure the nginx server_name 
#* PROJECT: project name or identifier. git clone folder into this name. also systemctl service will be in this name. . do not have space for project. `_` or `-` should be acceptable.
#* PROJECT_DJANGO_ROOT: relative path to django root folder. example: src/django/myproj-django
#* PROJECT_DJANGO_WSGI_APP: relative path to wsgi app from the DJANGO_ROOT folder. example: myproj
#* GIT_REPO: full path to clone the repo. this should contain the username, password. in gitlab we use ciserver deploy tokens. no other SSh is used.
#* PROJECT_STATIC_ROOT: this is used to configure the nginx. relative root path to the project static
#
#
### Unused yet
#
#export DB_DUMP_FOLDER='~/tmp/db_dump/wwoc'
#
#
### Configuring server first time
#
#```
#fab apt-update
#fab install-nginx
#fab install-virtualenv
#fab git-clone
#fab create-venv
#fab install-requirements
#fab create-gunicorn-service
#fab test-gunicorn-service
#fab create-nginx-site
#fab put-env ../proj/.env.prod
#fab deploy master
#```
#
#
### TODO
#pick all settings from django settings file.
##
##
import os
from dotenv import load_dotenv
from fabric.tasks import task
from fabric import Connection
from invoke import run as local
load_dotenv()
import socket
socket.gethostbyname("localhost")

USER = "ubuntu"
SERVER = os.getenv("SERVER")
PROJECT = os.getenv("PROJECT")
PROJECT_DJANGO_ROOT = os.getenv("PROJECT_DJANGO_ROOT")
PROJECT_DJANGO_WSGI_APP = os.getenv("PROJECT_DJANGO_WSGI_APP")
SSH_FILE_NAME = os.getenv("SSH_FILE_NAME")
SSH_FILE = os.getenv("SSH_FILE")
PEM_FILE = os.getenv("PEM_FILE")
GIT_REPO = os.getenv("GIT_REPO")
SERVER_NAME = os.getenv("SERVER_NAME")
PROJECT_STATIC_ROOT = os.getenv("PROJECT_STATIC_ROOT")

CONNECT_KWARGS = {"key_filename":[PEM_FILE]}
c = Connection(host=SERVER, user=USER, connect_kwargs=CONNECT_KWARGS)
print(f"Connected to SERVER={SERVER} user={USER}, CONNECT_KWARGS= {CONNECT_KWARGS}")

"""
This script will install and configure a django app in the destination server.
The daemon is spawned using systemd.

nginx -> systemd -> gunicorn 

to run full 


"""

@task 
def ls_normal(ctx):
    c.run('ls')

@task
def ls(ctx, folder):
    c.run(f"ls -lrta {folder}")

@task 
def cat(ctx, file):
    c.run(f"cat {file}")

@task
def apt_update(ctx):
    c.sudo("apt-get update -y")

@task
def install_nginx(ctx):
    c.sudo("apt install nginx -y")

@task
def install_git(ctx):
    c.sudo("apt install git-all -y")

@task
def install_virtualenv(ctx):
    c.sudo("apt-get install python3-pip -y")
    c.run("python3 -m pip install virtualenv")

@task
def git_clone(ctx):
    print(f"git clone {GIT_REPO}")
    with c.cd(f"~/"):
        print(f"rm -rf {PROJECT}")
        c.run(f"rm -rf {PROJECT}")
        c.run(f"git clone {GIT_REPO}", pty=True)

@task 
def git_pull(ctx):
    with c.cd(f"~/{PROJECT}"):
        c.run(f"git pull")

@task
def create_venv(ctx):
    with c.cd(f"~/{PROJECT}/"):
        c.run("python3 -m virtualenv venv")

@task
def install_requirements(ctx, branch='master'):
    with c.cd(f"~/{PROJECT}/"):
        c.run(f"git checkout -f origin/{branch}")
        c.run("source venv/bin/activate")
        with c.cd(f"~/{PROJECT}/{PROJECT_DJANGO_ROOT}/"):
            c.run(f"~/{PROJECT}/venv/bin/pip install -r requirements.txt")

@task
def create_gunicorn_service(ctx):
    c.run(f'''cat > {PROJECT}.socket << EOF
[Unit]
Description={PROJECT} socket
[Socket]
ListenStream=/run/{PROJECT}.sock
SocketUser=www-data
[Install]
WantedBy=sockets.target
EOF
''')
    print("created socket file")
    c.sudo(f'''cat > {PROJECT}.service << EOF
[Unit]
Description={PROJECT} daemon
Requires={PROJECT}.socket
After=network.target

[Service]
Type=notify
User={USER}
Group={USER}
RuntimeDirectory=gunicorn
WorkingDirectory=/home/{USER}/{PROJECT}/{PROJECT_DJANGO_ROOT}
ExecStart=/home/{USER}/{PROJECT}/venv/bin/gunicorn {PROJECT_DJANGO_WSGI_APP}.wsgi
ExecReload=/bin/kill -s HUP $MAINPID
KillMode=mixed
TimeoutStopSec=5
PrivateTmp=true

[Install]
WantedBy=multi-user.target
EOF
''')
    print("created service file")
    c.sudo(f"mv {PROJECT}.socket /etc/systemd/system/")
    c.sudo(f"mv {PROJECT}.service /etc/systemd/system/")
    c.sudo("systemctl daemon-reload")
    c.sudo(f"systemctl enable --now {PROJECT}.socket")

@task
def test_gunicorn_service(ctx):
    c.sudo(f"curl --unix-socket /run/{PROJECT}.sock http", user="www-data")

@task
def create_nginx_site(ctx):
    c.sudo("rm -f /etc/nginx/sites-enabled/default")
    c.sudo(f"rm -f {PROJECT}.conf")
    c.run(f'''cat > {PROJECT}.conf << EOF
upstream {PROJECT}_server {{
  server unix:/run/{PROJECT}.sock fail_timeout=0;
}}

server {{
    listen 80;
    listen 443;
    server_name {SERVER_NAME};

    client_max_body_size 4G;

    access_log /var/log/nginx/{PROJECT}-access.log;
    error_log /var/log/nginx/{PROJECT}-error.log;

    keepalive_timeout 5;

    # path for static files
    root /home/{USER}/{PROJECT}/{PROJECT_DJANGO_ROOT}/dist;

    location / {{
      # checks for static file, if not found proxy to app
      try_files \$uri @proxy_to_{PROJECT};
    }}


    location @proxy_to_{PROJECT} {{
      proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
      proxy_set_header X-Forwarded-Proto \$scheme;
      proxy_set_header Host \$http_host;
      # we don't want nginx trying to do something clever with
      # redirects, we set the Host: header above already.
      proxy_redirect off;
      proxy_pass http://{PROJECT}_server;
    }}

    error_page 500 502 503 504 /500.html;
    location = /500.html {{
	    root /home/{USER}/{PROJECT}/{PROJECT_DJANGO_ROOT}/{PROJECT_STATIC_ROOT}/500.html;
    }}
}}
EOF
''')
    c.sudo(f"rm -f /etc/nginx/sites-enabled/{PROJECT}.conf")
    c.sudo(f"mv {PROJECT}.conf /etc/nginx/sites-enabled/")
    c.sudo(f"nginx -t")
    c.sudo("systemctl restart nginx")


@task 
def put_env(ctx, env):
    """the parameter file will be copied as .env and service is relaunched"""
    basefile = os.path.basename(env)
    local(f"rsync -e 'ssh -i {PEM_FILE}' {env} ubuntu@{SERVER}:~/{PROJECT}/{PROJECT_DJANGO_ROOT}/")
    if basefile != ".env":#rename to .env
        c.run(f"mv ~/{PROJECT}/{PROJECT_DJANGO_ROOT}/{basefile} ~/{PROJECT}/{PROJECT_DJANGO_ROOT}/.env")

@task
def deploy(ctx, branch="master"):
    with c.cd(f"~/{PROJECT}/"):
        c.run("git fetch --all")
        c.run(f"git checkout -f origin/{branch}")
        c.run("source venv/bin/activate")
        with c.cd(f"~/{PROJECT}/{PROJECT_DJANGO_ROOT}/"):
            c.run(f"~/{PROJECT}/venv/bin/pip install -r requirements.txt")
            c.run(f"~/{PROJECT}/venv/bin/python manage.py migrate")
            c.run(f"~/{PROJECT}/venv/bin/python manage.py collectstatic --noinput")
    c.sudo(f"systemctl restart {PROJECT}.service")

@task
def deploy_first(ctx, branch="dev"):
    # ls(ctx)
    # cat(ctx)
    ls_normal(ctx)
    apt_update(ctx)
    install_nginx(ctx)
    install_git(ctx)
    git_clone(ctx)
    git_pull(ctx)
    install_virtualenv(ctx)
    create_venv(ctx)
    install_requirements(ctx, branch)
    create_gunicorn_service(ctx)
    test_gunicorn_service(ctx)
    create_nginx_site(ctx)
    put_env(ctx, ".env.casino.dev")
    deploy(ctx, branch)

# @task 
# def rsync(ctx):
#     #copy all files excluding pycache and venv files. add additional files to exclude and setup this if required. same command copy into deploy.
#     local(f"rsync -av -e 'ssh -i {SSH_FILE}' --exclude '{PROJECT_DJANGO_ROOT}/venv/' --exclude '__pycache__/' --exclude 'tags' --delete-excluded ../ ubuntu@{SERVER}:/home/ubuntu/{PROJECT}/")

# @task 
# def deploy(ctx, env='.env'):
#     local(f"rsync -av -e 'ssh -i {SSH_FILE}' --exclude '{PROJECT_DJANGO_ROOT}/venv/' --exclude '__pycache__/' --exclude 'tags' ../ ubuntu@{SERVER}:/home/ubuntu/{PROJECT}/")
#     with c.cd(f"~/{PROJECT}/"):
#         c.run("source venv/bin/activate")
#         with c.cd(f"~/{PROJECT}/{PROJECT_DJANGO_ROOT}/"):
#             c.run(f"~/{PROJECT}/venv/bin/pip install -r requirements.txt")
#             c.run(f"~/{PROJECT}/venv/bin/python manage.py migrate")
#             c.run(f"~/{PROJECT}/venv/bin/python manage.py collectstatic --noinput")

    # basefile = os.path.basename(env)
    # local(f"rsync -e 'ssh -i {SSH_FILE}' {env} ubuntu@{SERVER}:~/{PROJECT}/{PROJECT_DJANGO_ROOT}/")
    # if basefile != ".env":#rename to .env
    #     c.run(f"mv ~/{PROJECT}/{PROJECT_DJANGO_ROOT}/{basefile} ~/{PROJECT}/{PROJECT_DJANGO_ROOT}/.env")
    # c.sudo(f"systemctl restart {PROJECT}.service")

@task 
def clean(ctx):
    with c.cd(f"~/{PROJECT}"):
        c.run(f"rm -rf {PROJECT_DJANGO_ROOT}/")
