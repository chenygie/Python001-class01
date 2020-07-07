# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


import pandas as pd
import pymysql
class MaoyanXpathPipeline:
    def process_item(self, item, spider):
        movie_name = item['movie_name']
        movie_type = item['movie_type']
        movie_time = item['movie_time']

        # output = f'|{movie_name}|\t|{movie_type}|\t|{movie_time}|\n'
        # with open('./maoyanmoviexpath.csv', 'a+', encoding='utf-8') as article:
        #     article.write(output)
        #     article.close()
        movies_data = {'电影名称':[],'电影类型':[],'上映时间':[]}
        movies_data['电影名称'].append(movie_name)
        movies_data['电影类型'].append(movie_type)
        movies_data['上映时间'].append(movie_time)
        movies_data = pd.DataFrame(data=movies_data,columns=['电影名称','电影类型','上映时间'])
        # print(movies_data)
        movies_data.to_csv('./maoyanmoviexpath.csv',mode='a',sep=',',encoding='utf-8',index=False, header=False)
        

        # Connect to the database
        connection = pymysql.connect(host='127.0.0.1',
                                    user='root',
                                    password='',
                                    db='maoyan'
                                    )

        try:
            with connection.cursor() as cursor:
                # Create a new record
                sql = f"INSERT INTO movies (name, type, date) VALUES ('{movie_name}', '{movie_type}', '{movie_time}')"
                cursor.execute(sql)

            # connection is not autocommit by default. So you must commit to save
            # your changes.
            connection.commit()

            with connection.cursor() as cursor:
                # Read a single record
                sql = "SELECT * FROM `movies` limit 10"
                cursor.execute(sql)
                result = cursor.fetchone()
                print(result)
        finally:
            connection.close()

        return item
