import urllib.parse
from .models import ShoujiShouji
from django.db.models import Avg
from django.shortcuts import render,redirect
from .form import RequestForm

# Create your views here.

def estimate_url(request):
    form = RequestForm()
    shorts = ShoujiShouji.objects.all()
    # 评论数量
    counter = ShoujiShouji.objects.all().count()
    # 平均星级
    star_avg = f" {ShoujiShouji.objects.aggregate(Avg('n_star'))['n_star__avg']:0.1f} "
    # 情感倾向
    sent_avg = f" {ShoujiShouji.objects.aggregate(Avg('sentiment'))['sentiment__avg']:0.2f} "
    # 正向数量
    queryset = ShoujiShouji.objects.values('sentiment')
    condtions = {'sentiment__gte': 0.5}
    plus = queryset.filter(**condtions).count()
    # 负向数量
    queryset = ShoujiShouji.objects.values('sentiment')
    condtions = {'sentiment__lt': 0.5}
    minus = queryset.filter(**condtions).count()
    return render(request,'result1.html',locals())

# action="/request_url" method="post"
def request_url(request,name):
    if request.method == 'POST':
        try:
            condtions = {}
            form = RequestForm(request.POST)
            # print('+'*70)
            # print(form)
            if form.is_valid():
                cd = form.cleaned_data
                if cd['text']:
                    # print('-'*40)
                    cd['text']= urllib.parse.unquote(cd['text'])
                    # print(cd['text'])
                    condtions['estimate__contains'] = cd['text']
                if cd['start_time']:
                    # print('='*40)
                    # print(cd['start_time'])
                    condtions['date__gte'] = cd['start_time']
                if cd['last_time']:
                    # print(cd['last_time'])
                    condtions['date__lte'] = cd['last_time']
                shorts = ShoujiShouji.objects.filter(**condtions)
                counter = ShoujiShouji.objects.filter(**condtions).count()
                # 平均星级
                star_avg = f"{ShoujiShouji.objects.filter(**condtions).aggregate(Avg('n_star'))['n_star__avg']:0.1f}"
                # 情感倾向
                sent_avg = f"{ShoujiShouji.objects.filter(**condtions).aggregate(Avg('sentiment'))['sentiment__avg']:0.2f}"
                # 正向数量
                queryset = ShoujiShouji.objects.filter(**condtions).values('sentiment')
                condtions = {'sentiment__gte': 0.5}
                plus = queryset.filter(**condtions).count()
                # 负向数量
                queryset = Shouji.objects.filter(**condtions).values('sentiment')
                condtions = {'sentiment__lt': 0.5}
                minus = queryset.filter(**condtions).count()
                return render(request, 'result1.html',locals())
        except Exception:
            form = RequestForm()
            point = '没有您搜索的信息...'
            return render(request, 'result1.html',locals())
    if request.method == "GET":
        form = RequestForm()
        return render(request, 'result1.html',locals())