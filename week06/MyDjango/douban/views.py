from django.shortcuts import render
from .models import FilmReview
# Create your views here.


def movie_comments(request):
    ###  从models取数据传给template  ###
    comments = FilmReview.objects.all()

    return render(request, 'index.html', locals())
