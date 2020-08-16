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