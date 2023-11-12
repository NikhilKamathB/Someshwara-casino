import json
import html
from django.contrib import admin
from .models import *
from django.db.models.functions import TruncDay
from django.core.serializers.json import DjangoJSONEncoder
from django.core import serializers as core_serializers
from rest_framework import serializers
import plotly.io as pio
import plotly.graph_objects as go


class TxAdmin(admin.ModelAdmin):
    list_display = ['date', 'sent', 'received']

    def has_change_permission(self, request, obj=None):
        return False

    def has_add_permission(self, request):
        return False

    def has_delete_permission(self, request, obj=None):
        return False

    def changelist_view(self, request, extra_context=None):

        chart_data_sent = Tx.objects.extra(select={'y': 'sent'}).values('date', 'y')
        chart_data_received = Tx.objects.extra(select={'y': 'received'}).values('date', 'y')
        as_json_sent = serializers.Serializer()
        as_json_sent = json.dumps(list(chart_data_sent), cls=DjangoJSONEncoder)
        as_json_received = serializers.Serializer()
        as_json_received = json.dumps(list(chart_data_received), cls=DjangoJSONEncoder)

        x_axis = [i['date'] for ind, i in enumerate(json.loads(as_json_sent)[::-1]) if ind+1 <= 100]
        y_axis_sent = [i['y'] for ind, i in enumerate(json.loads(as_json_sent)[::-1]) if ind+1 <= 100]
        y_axis_received = [i['y'] for ind, i in enumerate(json.loads(as_json_received)[::-1]) if ind+1 <= 100]

        fig = go.Figure(data=[
            go.Bar(name='Money sent', x=x_axis, y=y_axis_sent),
            go.Bar(name='Money received', x=x_axis, y=y_axis_received)
        ])
        fig.update_layout(barmode='group')

        chart = pio.to_html(fig, full_html=False)
        extra_context = extra_context or {"chart": chart}

        return super().changelist_view(request, extra_context=extra_context)


from .models import UserSummary
from django.db.models import Count, Sum, Min, Max
from django.db.models import F, Func, Value, CharField
from django.db.models.functions import TruncDate, TruncDay, TruncMonth,TruncYear, TruncWeek, TruncHour
from django.db.models.functions import Trunc
from django.db.models import DateTimeField

date_func={
    'month':TruncMonth,
    'year':TruncYear,
    'week': TruncWeek,
    'day': TruncDate,
    'hour': TruncHour
}


def get_next_in_date_hierarchy(request, date_hierarchy):
    
    if date_hierarchy + '__day' in request.GET:
        return 'hour'

    if date_hierarchy + '__month' in request.GET:
        return 'day'


    if date_hierarchy + '__year' in request.GET:
        return 'month'
    
    return 'month'

def get_date_filter(request, date_hierarchy):
    filter_dict={}
    if date_hierarchy + '__hour' in request.GET:
        filter_dict[date_hierarchy + '__hour']=request.GET[date_hierarchy + '__hour']

    if date_hierarchy + '__day' in request.GET:
        filter_dict[date_hierarchy + '__day']=request.GET[date_hierarchy + '__day']
        
    if date_hierarchy + '__month' in request.GET:
        filter_dict[date_hierarchy + '__month']=request.GET[date_hierarchy + '__month']
        

    if date_hierarchy + '__year' in request.GET:
        filter_dict[date_hierarchy + '__year']=request.GET[date_hierarchy + '__year']
        
   
    return filter_dict

@admin.register(UserSummary)
class SaleSummaryAdmin(admin.ModelAdmin):
    change_list_template = 'admin/analytics/user_registration/user_registration_summary_change_list.html'
    date_hierarchy = 'date_joined'
    
    def changelist_view(self, request, extra_context=None):
        response = super().changelist_view(
            request,
            extra_context=extra_context,
        )

        period = get_next_in_date_hierarchy(request, self.date_hierarchy)
        filters=get_date_filter(request, self.date_hierarchy)
        print("period===>",filters)
        #response.context_data['period'] = period

        # try:
        #     #qs = response.context_data['cl'].queryset
        #     qs=UserSummary.objects.all().annotate(period=Trunc('date_joined', period, output_field=DateTimeField()),).values('period').annotate(total=Count('period')).order_by('period')
        #     print("qs period===>", qs)
        # except (AttributeError, KeyError):
        #     return response

        # # metrics = { 
        # #     'total': Count('date_join')   
        # # }
     
        
        # qe=qs.values(date=TruncDate('date_joined')).annotate(total=Count('date'))
        # print("qs====>", qe)
        # response.context_data['summary'] = list(
        #     qs
        #     .values(
        #        date=TruncDate('date_joined'))
        #     .annotate(total=Count('date'))
        #     .order_by('-date')
        # )
            
        #print("response.context_data['summary']===>", response.context_data['summary'])

        # summary = UserSummary.objects.all().filter(**filter_dict).annotate(
        #     date=Trunc(
        #         'date_joined',period,
        #         output_field=DateTimeField(),
        #             ),
        #         ).values(date=date_func[period]('date')).annotate(total=Count('date')).order_by('date')

        summary = UserSummary.objects.all().filter(**filters).annotate(
            date=Trunc(
                'date_joined',period,
                output_field=DateTimeField(),
                    ),
                ).values(date=date_func[period]('date')).annotate(total=Count('date')).order_by('date')

        print("summary======>", summary)
        print("summary count======>", summary.count())

        summary_range = summary.aggregate(
            low=Min('total'),
            high=Max('total'),
        )
        high = summary_range.get('high', 0)
        low = summary_range.get('low', 0)
       
        print("high==>", high)
        print("low==>", low)
        response.context_data['summary'] = [{
            'date': x['date'],
            'total': x['total'] ,
            'pct': \
               ((x['total']) / (high)* 100)
               if high > low else 100,
        } for x in summary]

        response.context_data['all_total']=summary.aggregate(Sum('total'))
        response.context_data['date_type']=period
        return response

admin.site.register(Tx, TxAdmin)
