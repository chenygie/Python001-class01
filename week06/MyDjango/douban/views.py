from django.shortcuts import render
from .models import Movie
# Create your views here.


def movie_comments(request):
    ###  从models取数据传给template  ###
    # 提取评分三星以上的作为好评
    condtions = {'star__gte': 4.0}
    comments = Movie.objects.all().filter(**condtions)
    return render(request, 'index.html', locals())
