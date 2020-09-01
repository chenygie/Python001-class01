# -*- coding: utf-8 -*-

# import functools
# import timeit

# @functools.lru_cache()
# def fibonacci(n):
#     if n < 2:
#         return n
#     return fibonacci(n-2)+fibonacci(n-1)

# def fib(n):
#     if n < 2:
#         return n
#     return fib(n-2)-fib(n-1)
# if __name__ == '__main__':
#     print("use @functools.lru_cache() run time:")
#     print(timeit.timeit('fibonacci(6)',setup='from __main__ import fibonacci'))
#     print("nonuse @functools.lru_cache() run time:")
#     print(timeit.timeit('fib(6)',setup='from __main__ import fib'))

# #类装饰器
# class Count(object):
#     def __init__(self,func):
#         self._func = func
#         self.num_calls = 0
#     def __call__(self,*args, **kwargs):
#         self.num_calls += 1
#         print(f'num of call is {self.num_calls}')
#         return self._func(*args,**kwargs)
# @Count
# def example():
#     print("class decorator")

# if __name__ == '__main__':
#     for i in range(10):
#         example()

# def decorator(aclass):
#     class newClass(object):
#         def __init__(self,args):
#             self.times = 0
#             self.wrapped = aclass
#         def display(self):
#             self.times += 1
#             print("run times ",self.times)
#             self.wrapped.display()
#     return newClass

# @decorator
# class MyClass(object):
#     def __init__(self,number):
#         self.number = number
#     def display(self):
#         print("number is ",self.number)

# six = MyClass(6)

# for i in range(5):
#     six.display()

# # 闭包
# def line_conf():
#     def line(x):
#         return 2*x+1
#     return line

# my_line = line_conf()
# print(my_line(5))

# # 闭包
# def line_conf():
#     b = 10
#     def line(x):
#         return 2*x+b
#     return line
# my_line = line_conf()
# print(my_line(5))

# # 闭包
# def line_conf(a,b):
#     def line(x):
#         return a*x+b
#     return line
# my_line = line_conf(2,10)
# my_line(10)

# # 闭包
# a = 100
# b = 200

# def line_conf(a,b):
#     def line(x):
#         return a*x+b
#     return line
# my_line1 = line_conf(1,1)
# my_line2 = line_conf(2,10)

# print(my_line(5))
# print(my_line(10))

# #  闭包
# def counter(start=0):
#     count = [start]
#     def increment():
#         count[0] += 1
#         return count[0]
#     return increment
# c1 = counter(10)
# c1()
# c1()

# # 闭包和nonlocal 使用方法
# def counter2(start=0):
#     def increment():
#         nonlocal start
#         start += 1
#         return start
#     return increment
# c1 = counter2(10)
# c1()
# c1()
# c2 = counter2(20)
# c2()
# c2()

# def square(x):
#     return x**2
# m = map(square,range(5))
# next(m)
# list(m)

# [square(i) for i in range(5) ]

# dir(m)

# # reduce reduce(f,[x1,x2,x3]) == f(f(x1,x2),x3)
# from functools import reduce
# def add(x,y):
#     return x + y
# reduce(add,[1,2,3,4])
# # filter
# def is_odd(n):
#     return n%2 == 1
# list(filter(is_odd,[1,1,1,1,1,222,2,2,2,4,3,5,]))


# # partial 
# from functools import partial
# def add(x,y):
#     return x + y
# add_1 = partial(add,1)
# add_1(20)
# add_1(13)

# import itertools
# g = itertools.count()
# next(g)
# next(g)
# auto_add_1 = partial(next,g)
# auto_add_1()
# auto_add_1()

# sorted(['bob', 'about', 'Zoo', 'Credit'])
# sorted(['bob', 'about', 'Zoo', 'Credit'],key=str.lower)
# sorted(['bob', 'about', 'Zoo', 'Credit'],key=str.lower,reverse=True)

# var = 100
# def func():
#     print(var)
# func()

# x = 'Global'
# def func2():
#     x = 'enclosing'
#     def func3():
#         x = 'local'
#         print(x)
#     func3()
# print(x)
# func2()

# # 闭包
# x = 'Global'
# def func4():
#     x = 'enclosing'
#     def func5():
#         return x
#     return func5
# var = func4()
# var()

# dir(__builtins__)

# # 语法糖

# def decorator(func):
#     print('running in model')
#     def inner():
#         return func()
#     return inner

# @decorator
# def func2():
#     pass
# func2()

# def outer(func):
#     def inner(a,b):
#         print(f'inner:{func.__name__}')
#         print(a,b)
#         func(a,b)
#     return inner
# @outer
# def foo(a,b):
#     print(a+b)
#     print(f'foo:{foo.__name__}')
# foo(1,2)
# foo.__name__

# # 被修饰函数带不定长参数
# def outer2(func):
#     def inner2(*args,**kwargs):
#         func(*args,**kwargs)
#     return inner2
# @outer2
# def foo(a,b,c):
#     print(a+b+c)

# foo(1,2,3)

# # 被修饰函数带返回值
# def outer3(func):
#     def inner3(*args,**kwargs):
#         ret = func(*args,**kwargs)
#         return ret
#     return inner3
# @outer3
# def foo(a,b,c):
#     return (a+b+c)
# print(foo(1,2,3))

# # 装饰器带参数
# def outer_arg(bar):
#     def outer(func):
#         def inner(*args,**kwargs):
#             ret = func(*args,**kwargs)
#             print(bar)
#             return ret
#         return inner
#     return outer
# # 相当于outer_arg('foo_arg')(foo)()
# @outer_arg('foo_arg')
# def foo(a,b,c):
#     return (a+b+c)
# print(foo(1,2,3))

# 装饰器堆叠


# # #######################
# # 内置的装饰方法函数

# # functools.wraps
# # @wraps接受一个函数来进行装饰
# # @wraps 还原原来的方法名
# from time import ctime,sleep
# from functools import wraps
# def outer_arg(bar):
#     def outer(func):
#         @wraps(func)
#         def inner(*args,**kwargs):
#             print("%s called at %s"%(func.__name__,ctime()))
#             ret = func(*args,**kwargs)
#             return ret
#         return inner
#     return outer

# @outer_arg('foo_arg')
# def foo(a,b,c):
#     ''' __doc__ '''
#     return (a+b+c)

# print(foo.__name__)
# print(foo(1,2,3))

# ########################
# # flask 使用@wraps()的案例

# from functools import wraps

# def requires_auth(func):
#     @wraps(func)
#     def auth_method(*args,**kwargs):
#         if not auth:
#             authenticated()
#         return func(*args,**kwargs)
#     return auth_method
# @requires_auth
# def func_demo():
#     pass
# # wraps + logit + log write
# from functools import wraps
# def logit(logfile='out.log'):
#     def logging_decorator(func):
#         @wraps(func)
#         def wrapped_function(*args,**kwargs):
#             log_string = func.__name__ + " was called"
#             print(log_string)
#             with open(logfile,'a') as opened_file:
#                 opened_file.write(log_string+'\n')
#             return func(*args,**kwargs)
#         return wrapped_function
#     return logging_decorator

# @logit()
# def myfunc1():
#     pass
# myfunc1()

# @logit(logfile='./func2.log')
# def myfunc2():
#     pass
# myfunc2()

# ##########################
# # @wraps可以替代wrapt包,wrapt用于内层装饰
# #  @wrapt.decorator
# #  def wrapper(func, instance, args, kwargs):
# import wrapt
# def with_arguments(my_arg1,my_arg2):
#     @wrapt.decorator
#     def wrapper(wrapped,instance,args,kwargs):
#         return wrapped(*args,**kwargs)
#     return wrapper
# @with_arguments(1,2)
# def function():
#     pass

# # functools.lru_cache
# # 《fluent python》的例子
# # functools.lru_cache(maxsize=128,type=False)有两个可选参数
# # maxsize代表缓存的内存占用值，超过这个值之后，旧的结果就会被释放
# # type 若为 True ，则会把不同的参数类型的得到的结果分开保存
# from functools import lru_cache
# import timeit
# @lru_cache()
# def fibonacci(n):
#     if n < 2:
#         return n
#     return (fibonacci(n-2)+fibonacci(n-1))
# if __name__ == '__main__':
#     print(timeit.timeit('fibonacci(6)',setup='from __main__ import fibonacci'))


# # python 2.6 以后版本 开始添加类装饰器
# from functools import wraps
# class MyClass(object):
#     def __init__(self,var='init_var',*args,**kwargs):
#         self.var = var
#         super(MyClass,self).__init__(*args,**kwargs)
#     def __call__(self,func):
#         @wraps(func)
#         def wrapped_function(*args,**kwargs):
#             func_name = func.__name__ + " was called"
#             print(func_name)
#             return func(*args,**kwargs)
#         return wrapped_function
# def myfunc():
#     pass

# MyClass(100)(myfunc)()

# # 另一个例子
# class Count(object):
#     def __init__(self,func):
#         self._func = func
#         self.num_calls = 0
#     def __call__(self,*args,**kwargs):
#         self.num_calls += 1
#         print(f'num of call is {self.num_calls}')
#         return self._func(*args,**kwargs)
# @Count
# def example():
#     pass
# example()

# print(type(example))

# # 其他常用的排列和计数相关用法
# a = (1,2,3,4)
# a.sort()

# # sorted 支持更多场景 多维list 字典混合list list混合字典
# sorted(a)

# # 计数有没有更优雅、更pythonic的解决方法呢？ 答案是使用collections.Counter.
# from collections import Counter
# some_data = [123,1,2,3,4,5,3,4,5,6,232,7,8,23,3,134,3,4,31,233,224,24,43,23]
# Counter(some_data)
# # 利用most_common()方法可以找出前N个出现频率最高的元素以及他们
# Counter(some_data).most_common(3)

# # 装饰类
# def decorator(aClass):
#     class newClass(object):
#         def __init__(self,args):
#             self.times = 0
#             self.wrapped = aClass(args)
#         def display(self):
#             self.times += 1
#             print(f"run times {self.times}")
#             self.wrapped.display()
#     return newClass
# @decorator
# class MyClass(object):
#     def __init__(self,number):
#         self.number = number
#     def display(self):
#         print(f"number is {self.number}")
# six = MyClass(6)
# for i in range(5):
#     six.display()

# 官方文档装饰器的其他用途举例

# # 函数参数观察器
# import functools
# def trace(f):
#     @functools.wraps(f)
#     def decorator_function(*args,**kwargs):
#         print(f"f:{f},args:{args},kwargs:{kwargs}")
#         ret = f(*args,**kwargs)
#         return ret
#     return decorator_function
# @trace
# def greet(greeting,name):
#     return (f"{greeting},{name}")
# greet('better','me')

# # python 3.7 引入 Data Class  PEP557

# class MyClass:
#     def __init__(self,var_a,var_b):
#         self.var_a = var_a
#         self.var_b = var_b
#     def __eq__(self,other):
#         if self.__class__ is not other.__class__:
#             return False
#         return (self.var_a,self.var_b) == (other.var_a,other.var_b)

# var3 = MyClass('x','y')
# var4 = MyClass('x','y')

# var3 == var4

# ##########################
# # 如下的类装饰器实现了一个用于类实例属性的private声明
# # 属性存储在一个实例上，或者从其中一个类继承而来
# # 不接受从装饰的类的外部对这样的属性获取和修改访问
# # 但是，仍然允许类自身在其方法中自由地访问那些名称
# # 类似于Java中的private属性

# trace_Me = False
# def trace(*args):
#     if trace_Me:
#         print('['+ ' '.join(map(str,args))+ ']')
# def Private(*privates):
#     def onDecorator(aClass):
#         class onInstance:
#             def __init__(self,*args,**kwargs):
#                 self.wrapped = aClass(*args,**kwargs)
#             def __getattr__(self,attr):
#                 trace('get:',attr)
#                 if attr in privates:
#                     raise TypeError('private attribute fetch:'+attr)
#                 else:
#                     return getattr(self.wrapped,attr)
#             def __setattr__(self,attr,value):
#                 trace('set:',attr,value)
#                 if attr == 'wrapped':
#                     self.__dict__[attr] = value
#                 elif attr in privates:
#                     raise TypeError('private attribute fetch:'+attr)
#                 else:
#                     setattr(self.wrapped,attr, value)
#         return onInstance
#     return onDecorator

# if __name__ == '__main__':
#     trace_Me = True
#     @Private('data','size')
#     class Doubler:
#         def __init__(self,label,start):
#             self.label = label
#             self.data = start
#         def size(self):
#             return len(self.data)
#         def double(self):
#             for i in range(self.size()):
#                 self.data[i] = self.data[i] * 2
#         def display(self):
#             print(f'{self.label} => {self.data}')
#             # pass
#     X = Doubler('X is',[1,2,3])
#     Y = Doubler('Y is',[-10,-20,-30])
#     print(X.label)
#     X.display()
#     X.double()
#     X.display()
#     print(Y.label)
#     Y.display()
#     Y.double()
#     Y.label = 'spam'
#     Y.display()
#     # 因为装饰器的@Private('data','size')下面
#     # 这些访问都会引发异常
#     # 
#     # print(X.size())
#     # print(X.data)
#     # X.data = [1,1,1]
#     # X.size = lambda S:0
#     # print(Y.data)
#     # print(Y.size())

# class Foo(object):
#     def __str__(self):
#         return('__str__ is called')
#     def __getitem__(self,key):
#         return(f'__getitem__ {key}')
#     def __setitem__(self,key,value):
#         return(f'__setitem__ {key},{value}')
#     def __delitem__(self,key):
#         return(f'__delitem__ {key}')
#     def __iter__(self):
#         return(iter([i for i in range(5)]))

# bar = Foo()
# print(bar)
# # __str__ is called
# bar['key1']
# # '__getitem__ key1'
# bar['key1'] = 'value1'

# del bar['key1']

# # __iter__
# for i in bar:
#     print(i)

# # typing 类型注解（type hint)
# # 与鸭子类型相反的是静态类型，声明变量的时候就要指定类型，如果使用其他类型对变量进行赋值的时候会报错
# def func(text:str,number:int) -> str:
#     return text * number

# func('a',6)

# alist = [1,1,2,3,4,5]
# hasattr(alist,'__iter__')
# # True
# hasattr(alist,'__next__')
# # False

# for i in alist:
#     print(i)
# # 结论一 列表是可迭代对象， iterable,
# # 是不是迭代器

# g = (i for i in range(5))
# g

# hasattr(g,'__iter__')
# hasattr(g,'__next__')

# g.__next__()
# next(g)
# for i in g:
#     print (i)
# 结论二 生成器实现完整的迭代器协议

##############################
# 类实现完整的迭代器协议
# class SampleIterator:
#     def __iter__(self):
#         return self

#     def __next__(self):
#         # Not The End
#         if ...:
#             return ...
#         # Reach The End
#         else:
#             raise StopIteration

# # 函数实现完整的迭代器协议
# def SampleGenerator():
#     yield ...
#     yield ...
#     yield ...  # yield语句
# # 只要一个函数的定义中出现了 yield 关键词，则此函数将不再是一个函数，
# # 而成为一个“生成器构造函数”，调用此构造函数即可产生一个生成器对象。

# ###################
# # check iter

# def check_iterator(obj):
#     if hasattr(obj,'__iter__'):
#         if hasattr(obj,'__next__'):
#             print(f'{obj} is iterator') # 完整的迭代器协议
#         else:
#             print(f'{obj} is iterable') # 可迭代对象
#     else:
#         print(f'{obj} is not iterable') # 不可迭代
# def func1():
#     yield range(6)
# check_iterator(func1)
# # <function func1 at 0x1085c17a0> is not iterable
# check_iterator(func1())
# # <generator object func1 at 0x108412d50> is iterator
# # 结论三 有yield 的函数是迭代器，执行yield语句之后才会生成器构造函数

# # itertools的三个常见无限迭代器
# import itertools
# count = itertools.count() # 计数器
# next(count)

# cycle = itertools.cycle(('yes','no')) #循环遍历
# next(cycle)

# repeat = itertools.repeat(10,times=2) # 重复
# next(repeat)

# # 有限迭代器
# for j in itertools.chain('abc',[1,2,3]):
#     print(j)

# # Python3.3 引入了 yield from 
# # PEP-380
# def chain(*iterables):
#     for it in iterables:
#         for i in it:
#             yield i
# s = 'abc'
# t = [1,2,3]
# list(chain(s,t))

# def chain2(*iterables):
#     for i in iterables:
#         yield from i  # yield from 替代内层循环
# list(chain2(s,t))

# # 迭代器有效性测试
# a_dict = {'a':1,'b':2}
# a_dict_iter = iter(a_dict)
# # <dict_keyiterator at 0x10849e950>
# next(a_dict_iter)
# a_dict['c'] = 3
# next(a_dict_iter)

# # RuntimeError: 字典进行插入操作后，字典迭代器会立即失效

# # 尾插入操作不会损坏指向当前元素的List迭代器,列表会自动变长
# x = iter([ y for y in range(5)])
# for i in x:
#     i
# x.__next__()

# def jumping_range(up_to):
#     index = 0
#     while index < up_to:
#         jump = yield index
#         print(f'jump is {jump}')
#         if jump is None:
#             jump = 1
#         index += jump
#         print(f'index is {index}')
# if __name__ == '__main__':
#     iterator = jumping_range(5)
#     print(next(iterator))
#     print(iterator.send(2))
#     print(next(iterator)) 
#     print(iterator.send(-1))
#     for i in iterator:
#         print(i)

# # python 3.3以后引入了 新的语法 yield from

# def ex1():
#     yield 1
#     yield 2
#     return 3
# def ex2():
#     ex1_result = yield from ex1()
#     print(f'ex1:{ex1_result}')
#     yield None
# gen1 = ex1()
# gen1.send(None) #1
# gen1.send(None) #2
# gen1.send(None) #StopIteration:3

# for i in ex2():
#     print(i)
# # 1
# # 2
# # ex1:3
# # None

# def bottom():
#     return (yield 42)
# def middle():
#     return (yield from bottom())
# def top():
#     return (yield from middle())
# # get the generator
# gen = top()
# value = next(gen)
# print(value)
# try:
#     value = gen.send(value * 2)
# except StopIteration as exc:
#     value = exc.value
#     print(value)

# # python 3.4 支持事件循环方法

# import asyncio

# @asyncio.coroutine
# def py34_fun():
#     yield from sth()

# ##################
# # python3.5 增加async await

# async def py35_func():
#     await sth()

# # 注意： await 接收的对象必须是awaitable对象
# # awaitable 对象定义了__await__()方法
# # awaitable 对象有三类
# # 1 协程 coroutine
# # 2 任务 Task
# # 3 未来对象 Future
#####################

# import asyncio
# async def main():
#     print('hello')
#     await asyncio.sleep(3)
#     print('world')

# # asyncio.run()运行最高层级的conroutine
# asyncio.run(main())
#################
# 协程调用过程： 
# 调用协程时，会被注册到ioloop，返回coroutine对象
# 用ensure_future 封装为Future对象
# 提交给ioloop

# 官方文档
# https://docs.python.org/zh-cn/3/library/asyncio-task.html

# import aiohttp
# import asyncio

# url = 'http://httpbin.org/get'

# async def fetch(client, url):
#     # get 方式请求url
#     async with client.get(url) as resp:
#         assert resp.status == 200
#         return await resp.text()

# async def main():
#     # 获取session对象
#     async with aiohttp.ClientSession() as client:
#         print(f'session:{client} |end')
#         html = await fetch(client, url)
#         print(html)
# new_loop = asyncio.new_event_loop()
# asyncio.set_event_loop(new_loop)
# loop = asyncio.get_event_loop()
# task = loop.create_task(main())
# loop.run_until_complete(task)
# # Zero-sleep 让底层连接得到关闭的缓冲时间
# loop.run_until_complete(asyncio.sleep(0))
# loop.close()

# from aiohttp import web

# # view
# async def index(request):
#     return web.Response(text='hello aiohttp')

# # routes
# def setup_routes(app):
#     app.router.add_get('/',index)

# # app
# app = web.Application()
# setup_routes(app)
# web.run_app(app,host='127.0.0.1',port=8000)

# import aiohttp
# import asyncio

# urls = ['http://httpbin.org',
#     'http://httpbin.org/get',
#     'http://httpbin.org/ip',
#     'http://httpbin.org/headers']
# async def crawler():
#     async with aiohttp.ClientSession() as session:
#         futures = map(asyncio.ensure_future,map(session.get,urls))
#         for task in asyncio.as_completed(futures):
#             print(await task)
# if __name__ == '__main__':
#     ioloop = asyncio.get_event_loop()
#     ioloop.run_until_complete(asyncio.ensure_future(crawler()))

# 进程池和协程

from multiprocessing import Pool
import asyncio
import time


async def test(time):
    await asyncio.sleep(time)

async def main(num):
    start_time = time.time()
    tasks = [asyncio.create_task(test(1)) for proxy in range(num)]
    [await t for t in tasks]
    print(time.time() - start_time)


def run(num):
    asyncio.run(main(num))


if __name__ == "__main__":
    start_time = time.time()
    p = Pool()
    for i in range(4):
        p.apply_async(run, args=(2500,))
    p.close()
    p.join()
    print(f'total {time.time() - start_time}')