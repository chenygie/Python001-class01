学习笔记

# 变量赋值

```python
a = 123
b = 123
c = a
print(id(a))
print(id(b))
print(id(c))
```

# 序列分类

* 容器序列：list tuple collections.deque等，能存放不同类型的数据 容器序列可以存放不同类型的数据
* 扁平序列：str bytes bytearray memoryview(内存视图) array.array 等，存放的是相同类型的数据 扁平序列只能容纳一种类型的数据

容器序列存在深拷贝、浅拷贝问题

* 非容器（数字 字符串 元组）类型没有拷贝问题

# home work 2
map generator object 通过 list化输出,对象值。map功能实现不全。


# home work 3 
```python
import time
def set_fun(func):
    def call_fun(*args,**kwargs):
        start_time = time.time()
        func(*args,**kwargs)
        end_time = time.time()
        print("程序用时:%s秒"%int(end_time-start_time))
    return call_fun
@set_fun
def test(*args,**kwargs):
    time.sleep(3)
if __name__ == '__main__':
    print('test')
    test()
```
## 装饰器
### tips
@time 装饰器使用 wraps 为了保持 装饰函数 前后一致性；通俗的讲就是讲：还原原来的函数名

### wraps+logit 
```python
from functools import wraps
def logit(logfile='out.log'):
    def logging_decorator(func):
        @wraps(func)
        def wrapped_function(*args,**kwargs):
            log_string = func.__name__ + " was called"
            print(log_string)
            with open(logfile,'a') as opened_file:
                opened_file.write(log_string+'\n')
            return func(*args,**kwargs)
        return wrapped_function
    return logging_decorator

@logit()
def myfunc1():
    pass
myfunc1()

@logit(logfile='./func2.log')
def myfunc2():
    pass
myfunc2()
```
### 装饰器初级
```python
def outer(func):
    def inner(a,b):
        print(f'inner:{func.__name__}')
        print(a,b)
        func(a,b)
    return inner
@outer
def foo(a,b):
    print(a+b)
    print(f'foo:{foo.__name__}')
foo(1,2)
foo.__name__
```

## 内部装饰器
```python
import functools
import timeit

@functools.lru_cache()
def fibbonacci(n):
    if n < 2:
        return n
    return fibonacci(n-2)+fibonacci(n-1)

def fib(n):
    if n < 2:
        return n
    return fib(n-2)+fib(n-1)
if __name__ == '__main__':
    print("use @functools.lru_cache() run time")
    print(timeit.timeit('fibonacci(6)',setup='from __main__ import fibonacci'))
    print("nonuse @functools.lru_cache() run time")
    print(timeit.timeit('fib(6)',setup='from __main__ import fib'))
```
### 类装饰器
python 2.6 以后开始支持添加类装饰器

* 类装饰器, 类用于装饰器

```python
class Count(object):
    def __init__(self,func):
        self._func = func
        self.number_calls = 0

    def __call__(self,*args,**kwargs):
        self.number_calls +=1
        print(f'number of call is {self.number_calls}')
        return self._func(*args,**kwargs)
@Count
def example():
    print('class decorator')

if __name__ == '__main__':
    for i in range(5):
        example()
```
* 装饰类 ，装饰器用于装饰类

```python
def decorator(aclass):
    class NewClass(object):
        def __init__(self,args):
            self.times = 0
            self.wrapped = aclass(args)
        def display(self):
            self.times += 1
            print("run times",self.times)
            self.wrapped.display()
        return NewClass

```

# nonocal
外层函数的变量，如果想要在内层函数进行修改，需要nonlocal

# asyncio 报错
RuntimeError: There is no current event loop in thread 'MainThread'.
解释async 运行多线程时报错，主要解决async运行多线程时使用实例、应用技巧、基本知识点总结和需要注意事项

```python
loop = asyncio.get_event_loop()
task = loop.create_task(main())
loop.run_until_complete(task)
# Zero-sleep 让底层连接得到关闭的缓冲时间
loop.run_until_complete(asyncio.sleep(0))
loop.close()
```
修改如下：
```python
new_loop = asyncio.new_event_loop()
asyncio.set_event_loop(new_loop)
loop = asyncio.get_event_loop()
task = loop.create_task(main())
loop.run_until_complete(task)
# Zero-sleep 让底层连接得到关闭的缓冲时间
loop.run_until_complete(asyncio.sleep(0))
loop.close()
```
问题的根源在于：
```python
def get_event_loop(self):
    """Get the event loop.
    This may be None or an instance of EventLoop.
    """
    if (self._local._loop is None and
            not self._local._set_called and
            isinstance(threading.current_thread(), threading._MainThread)):
        self.set_event_loop(self.new_event_loop())

    if self._local._loop is None:
        raise RuntimeError('There is no current event loop in thread %r.'
                            % threading.current_thread().name)

    return self._local._loop
```
在主线程中，调用get_event_loop总能返回属于主线程的event loop对象，如果是处于非主线程中，还需要调用set_event_loop方法指定一个event loop对象，这样get_event_loop才会获取到被标记的event loop对象：

# web server

```python
from aiohttp import web

# view
async def index(request):
    return web.Response(text='hello aiohttp')

# routes
def setup_routes(app):
    app.router.add_get('/',index)

# app
app = web.Application()
setup_routes(app)
web.run_app(app,host='127.0.0.1',port=8000)
```
# map & asyncio & aiohttp 

```python
import aiohttp
import asyncio

urls = ['http://httpbin.org',
    'http://httpbin.org/get',
    'http://httpbin.org/ip',
    'http://httpbin.org/headers']
async def crawler():
    async with aiohttp.ClientSession() as session:
        futures = map(asyncio.ensure_future,map(session.get,urls))
        for task in asyncio.as_completed(futures):
            print(await task)
if __name__ == '__main__':
    ioloop = asyncio.get_event_loop()
    ioloop.run_until_complete(asyncio.ensure_future(crawler()))
```

