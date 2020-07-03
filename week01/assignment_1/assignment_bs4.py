import requests
from bs4 import BeautifulSoup as bs
import scrapy
from scrapy.selector import Selector
from scrapy.http import HtmlResponse
from fake_useragent import UserAgent
import pandas as pd

def main():
    ua = UserAgent()
    user_agent = ua.random
    header = {'user-agent':user_agent,
            'cookie':'uuid_n_v=v1; uuid=3270A290BB7D11EAAEDC37E7AA22D4695F1668387AB447FE9EA5EEED959C19D0; _csrf=857cfbe207f64f24e123ecc121bfc7c10c3a5c96f3d01ba9fd63f33a4905f717; Hm_lvt_703e94591e87be68cc8da0da7cbd0be2=1593595699; mojo-uuid=679d9871f47f01a4fb4f091d8c8cbf4e; mojo-session-id={"id":"d89190b258b9b557c3de86d35a6a395b","time":1593595701114}; _lxsdk_cuid=17309b4a898c8-0d583914590e5b-31607402-fa000-17309b4a898c8; _lxsdk=3270A290BB7D11EAAEDC37E7AA22D4695F1668387AB447FE9EA5EEED959C19D0; mojo-trace-id=5; Hm_lpvt_703e94591e87be68cc8da0da7cbd0be2=1593595752; __mta=151878150.1593595711821.1593595736761.1593595753060.3; _lxsdk_s=17309b4a89a-4f6-fc2-013%7C%7C8'}
    myurl = 'https://maoyan.com/films?showType=3'

    response = requests.get(myurl, headers=header)
    print(response.status_code)
    bs_info = bs(response.text,'html.parser')

    i = 1
    movies_data = {'电影名称':[],'电影类型':[],'上映时间':[]}
    movies = bs_info.find_all('div',attrs={'class': 'movie-hover-info'})
    for tags in movies[:10]:
        print(i)
        i += 1
        movies_data['电影名称'].append(tags.find('div').find('span',).text)
        print(tags.find('div').find('span',).text)
        movies_data['电影类型'].append(tags.find_all('div', attrs={'class': 'movie-hover-title'})[1].text[4:].strip())
        print(tags.find_all('div', attrs={'class': 'movie-hover-title'})[1].text[4:].strip())
        movies_data['上映时间'].append(tags.find_all('div', attrs={'class':'movie-hover-title'})[3].text[6:].strip())
        print(tags.find_all('div', attrs={'class':'movie-hover-title'})[3].text[6:].strip())

    movies_data = pd.DataFrame(data=movies_data,columns=['电影名称','电影类型','上映时间'])
    print(movies_data)
    movies_data.to_csv('./maoyan_bs4.csv',encoding='utf-8',index=False, header=False)
if __name__ == '__main__':
    main()
