学习笔记

# tips 1 pandas 中文资料

[pandas 中文链接](https://www.pypandas.cn/docs/getting_started/basics.html#属性与底层数据)
![](./pandas.png)
# tips 2 SQL基础教程

[SQL基础教程](https://www.w3school.com.cn/sql/sql_join_inner.asp)



# tips 3 pandas中的tips

```python
df2.groupby('type').aggregate( {'type':'count' , 'Feb':'sum' })
```

pandas中map() 和apply() 的区别，对于初学者很容易产生迷惑

map()：针对pandas 中的DataFrame中列进行迭代操作，

apply(): 针对pandas中DataFrame中行进行迭代操作

# tips 4 python 创建虚拟环境

首先查看是否存在已经创建的虚拟环境

```bash
ls | grep venv1
```

如果没有，重新创建

```bash
python3 -m venv venv1(虚拟环境名)
```

进入已创建的虚拟环境

```bash
source venv1/bin/activate
```

show code 

```bash
➜ demo source venv1/bin/activate

(venv1) ➜ demo 
```

