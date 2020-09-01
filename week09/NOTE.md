学习笔记
# 创建Django项目
```django-admin startproject login```
# 在setting文件中配置数据库(本次使用默认不做以下配置)
```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'login_password',
        'USER':'root',
        'PASSWORD':'',
        'HOST':'127.0.0.1',
        'PORT':'3306',
    }
}
```
# 创建应用
```python manage.py startapp index```

# coding login/urls.py
```python
from django.contrib import admin
from django.urls import path

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('index.urls'))
]
```

# 创建application中的index/urls.py并coding
```python
from django.urls import path
from . import views

urlpatterns = [
    path('wrong_password', views.wrong_password),
    path('logged_in', views.logged_in),
    path('', views.login_page)
]
```
# coding index/views.py
```python
# Create your views here.
from django.shortcuts import render, redirect
from .form import LoginForm
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required


def wrong_password(request):
  return render(request, 'wrong_password.html')


@login_required(login_url='/')
def logged_in(request):
  return render(request, 'logged_in.html')


def login_page(request):
  if request.method == 'POST':
    login_form = LoginForm(request.POST)
    if login_form.is_valid():
      cd = login_form.cleaned_data
      user = authenticate(username=cd['username'], password=cd['password'])
      if user:
        login(request, user)
        return redirect('/logged_in')
      else:
        return redirect('/wrong_password')
  if request.method == "GET":
    login_form = LoginForm()
    return render(request, 'login_page.html', {'form': login_form})
```
# coding表单：index/form.py 
``` python
from django import forms


class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput, min_length=8)
```

# coding Templates/login page and wrong page 
login_page.html
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<p>Input your username and password</p>
<form action="/" method="post">
    {% csrf_token %}
    {{ form }}
    <input type="submit" value="Login">
</form>
</body>
</html>
```
logged_in.html
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>logged</title>
</head>
<body>
<p>登陆成功</p>
</body>
</html>
```
wrong_password.html
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登陆失败</title>
</head>
<body>
<p>秘密错误，登陆失败</p>
</body>
</html>
```