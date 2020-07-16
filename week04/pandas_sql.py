import  pandas as pd
import numpy as np
from sklearn import datasets
from pandasql import sqldf

def create_data():
    pysqldf = lambda sql:sqldf(sql,globals())
    iris = datasets.load_iris()
    print(iris.feature_names)
    iris_data = iris.data
    iris_data = pd.DataFrame(data = iris_data, columns=iris.feature_names)

    order_data = pd.DataFrame(data=None,columns=['id','order_id','age'])
    order_data['id'] = [i for i in np.random.randint(0,10,size=10)]+[i for i in np.random.randint(1000,1005,size=5)]
    order_data['order_id'] = [i for i in np.random.randint(0,10,size=10)]+[i for i in np.random.randint(10,15,size=5)]
    order_data['age'] = [i for i in np.random.randint(20,50,size=15)]

    order_data_2 = pd.DataFrame(data=None,columns=['id','order_id','age'])
    order_data_2['id'] = [i for i in np.random.randint(0,10,size=10)]+[i for i in np.random.randint(1000,1005,size=5)]
    order_data_2['order_id'] = [i for i in np.random.randint(0,10,size=10)]+[i for i in np.random.randint(10,15,size=5)]
    order_data_2['age'] = [i for i in np.random.randint(20,50,size=15)]
    return iris_data, order_data, order_data_2
def show_data(iris_data,order_data,order_data_2):
    print("1.SELECT * FROM data:\n",iris_data)

    print("2.SELECT * FROM data LIMIT(10):\n",iris_data.head(10))

    print("3.SELECT id FROM data\n//id 是 data 表的特定一列\n:", iris_data['sepal length (cm)'])

    print("4.SELECT COUNT(id) FROM data\n")
    print(order_data.id.count())
    print('5. SELECT * FROM data WHERE id<1000 AND age>30;')
    print(order_data[(order_data['id']>1000) & (order_data['age']>30)])
    print("6. SELECT id,COUNT(DISTINCT order_id) FROM table1 GROUP BY id;")
    print(order_data.groupby('id').agg({'order_id':'count'}))
    print("7. SELECT * FROM table1 t1 INNER JOIN table2 t2 ON t1.id = t2.id;")
    print(pd.merge(order_data,order_data_2,on='id',how = 'inner'))
    print("8. SELECT * FROM table1 UNION SELECT * FROM table2;")
    print(pd.concat([order_data,order_data_2]))
    print("9. DELETE FROM table1 WHERE id=10;")
    print(order_data.drop(index=order_data[order_data['id']==10].index))
    print("10. ALTER TABLE table1 DROP COLUMN column_name;")
    del order_data['age']
    print(order_data)
def run():
    iris_data,order_data,order_data_2 = create_data()
    show_data(iris_data, order_data, order_data_2)
if __name__ == '__main__':
    run()
