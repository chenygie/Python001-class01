# -*- coding: utf-8 -*-

'''
作业一：

区分以下类型哪些是容器序列哪些是扁平序列，哪些是可变序列哪些是不可变序列：

list
tuple
str
dict
collections.deque
作业二：
自定义一个 python 函数，实现 map() 函数的功能。

作业三：
实现一个 @timer 装饰器，记录函数的运行时间，注意需要考虑函数可能会接收不定长参数
'''

# 作业一
# 容器序列：list tuple collections.deque dict
# 扁平序列：str 
# 可变序列: list dict collections.deque
# 不可变序列:tuple str

# 作业二
def homework_map(func, iter_list):
    for i in iter_list:
        yield func(i)

#作业三
import time

def set_fun(func):
    def call_fun(*args, **kwargs):
        start_time = time.time()
        func(*args, **kwargs)
        end_time = time.time()
        print('程序用时：%s秒' % int(end_time - start_time))
    return call_fun


@set_fun
def test(*args, **kwargs):
    time.sleep(3)

if __name__ == '__main__':
    print('test')
    test()
    map_generator = homework_map(lambda x:x**2,[1,2,3,4])
    print("home work user defined map list value:",list(map_generator))
