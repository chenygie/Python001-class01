# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql
from itemadapter import ItemAdapter
class ShoujiPipeline:
    def process_item(self, item, spider):
        conn = pymysql.connect(host = '127.0.0.1',
                        port = 3306,
                        user = 'root',
                        password = '',
                        database = 'django',
                        charset = 'utf8mb4'
                        )
        sql = "INSERT INTO `shouji`(`date`, `n_star`, `estimate`, `sentiment`) VALUES ('{date}','{n_star}', '{estimate}', '{sentiment}')".format(date=item['date'], n_star=item['n_star'], estimate=item['estimate'], sentiment=item['sentiment'])
        
        try:
            # 获得cursor游标对象
            con1 = conn.cursor()
            con1.execute(sql)
            con1.close()
            conn.commit()
        except Exception as e:
            print(e,f'\n{"*"*20}操作失败{"*"*20}')
            conn.rollback()
        conn.close()
        return item
