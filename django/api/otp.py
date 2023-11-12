import json
import boto3
import string
import random
from twilio.rest import Client 
from django.conf import settings

# SNS send otp.
def invoke_lambda_send_sns_sms(phone=None):
    boto3.setup_default_session(region_name="ap-south-1")
    client = boto3.client(
        'lambda',
        aws_access_key_id=settings.AWS_ACCESS_LAMBDA_KEY_ID,
        aws_secret_access_key=settings.AWS_SECRET_LAMBDA_ACCESS_KEY
    )
    msg = ''.join(random.choices(string.digits, k = settings.OTP_LENGTH))
    payload = {
        "message": msg,
        "phonenumber": phone
    }
    response = client.invoke(
        FunctionName='casino-send-sms', #Modified old lambda function with new function from someshwara AWS account.
        InvocationType='RequestResponse',
        LogType='Tail',
        Payload=json.dumps(payload)
    )
    return msg, response

# Twilio send otp.
def send_opt(phone=None):
    msg = ''.join(random.choices(string.digits, k = settings.OTP_LENGTH))
    client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN) 
    client_res = client.messages.create(  
                              messaging_service_sid=settings.TWILIO_SERVICE_ID, 
                              body="Your OTP is "+msg,      
                              to=phone 
                          ) 
    return msg, client_res