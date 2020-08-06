from sqlalchemy import create_engine
import requests,pymysql,time,random
import lxml.etree
import pandas as pd

user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36"
headers = {'user-agent': user_agent}
urls = list(f'https://movie.douban.com/subject/34462775/comments?start={page*20}&limit=20&sort=new_score&status=P' for page in range(5))
url = 'https://movie.douban.com/subject/34462775/comments?start=0&limit=20&sort=new_score&status=P'
n_star = {'力荐':5,'推荐':4,'还行':3,'较差':2,'很差':1}

def get(url):
    response = requests.get(url,headers=headers)
    return response.text

def data_processing(user,star,content):
    df = pd.DataFrame({'user':user,'origin_star':star, 'content':content})
    df['star'] = df['origin_star'].map(n_star)
    df = df.fillna('0.0')
    df = df.drop('origin_star',axis=1)
    return df

def crawl_reviews(text):
    selector = lxml.etree.HTML(text)
    user = selector.xpath('//*[@class="comment-info"]/a/text()')
    star = selector.xpath('//*[@class="comment-info"]/span[2]/@title')
    content = selector.xpath('//*[@class="comment"]/p/span/text()')
    return data_processing(user,star,content)

def insert_sql(dataframe):
    engine = create_engine('mysql+pymysql://root:@127.0.0.1:3306/douban',encoding='utf-8')
    pd.io.sql.to_sql(dataframe,'movie',con=engine,index=True,if_exists='append')
    print('to mysql successfully!')

if __name__ == "__main__":
    for url in urls:
        df = crawl_reviews(get(url))
        insert_sql(df)
        time.sleep(random.choice([3,4,5,5,3])) 
    
