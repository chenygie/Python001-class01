学习笔记
[toc]
# 豆瓣电影评论项目设计
* 爬去数据存储mysql
* 使用pandas 或者 mysql 对数据进行处理，生成需要使用的 film_review 表
* 从startproject 中的 settings.py 开始编写对应设置settings.py->project:urls.py(path('douban/',include('douban.urls')))->app:urls.py(views.movie_comments)->app:views.py(comments = FilmReview.objects.all()..render(request, 'index.html', locals()))->app:models.py(方向数据库表)->templates:index.html
** tops 这里需要注意需要提前从 index.html 开发设计。这个功能需求 然后设计需要产生的数据表
#报错环境
python=3.6，django=2.2，PyMySQL=0.9.3

```bash
django.core.exceptions.ImproperlyConfigured: mysqlclient 1.3.13 or newer is required; you have 0.9.3.
```
解决方法：
Django连接MySQL时默认使用MySQLdb驱动，但MySQLdb不支持Python3，因此这里将MySQL驱动设置为pymysql，使用 pip install pymysql 进行安装，然后在工程文件__init__.py添加以下代码即可。
#安装pymysql
```bash
pip install pymysql
```
1
2
#__init__.py
import pymysql
pymysql.install_as_MySQLdb()
1
2
3
第一种：
django降到2.1.4版本就OK了
第二种（仍使用django 2.2版本）：
#找到Python环境下 django包，并进入到backends下的mysql文件夹
```bash
cd /opt/anaconda3/envs/envAGC_Mini/lib/python3.6/site-packages/django/db/backends/mysql
```


# 找到base.py文件，注释掉 base.py 中如下部分（35/36行）
```bash
if version < (1, 3, 3):
     raise ImproperlyConfigured("mysqlclient 1.3.3 or newer is required; you have %s" % Database.__version__)
```
此时仍会会报错，报错信息如下：
AttributeError: ‘str’ object has no attribute ‘decode’
找到operations.py文件（46行,版本不同行数不同哈~自个儿find一下），将decode改为encode
#linux vim 查找快捷键：？decode
```#!/usr/bin/env bash
if query is not None:
    query = query.decode(errors='replace')
return query
#改为
if query is not None:
    query = query.encode(errors='replace')
return query
```

OK~ 不再报错
