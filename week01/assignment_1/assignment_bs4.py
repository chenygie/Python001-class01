import requests
from bs4 import BeautifulSoup as bs
import scrapy
from scrapy.selector import Selector
from scrapy.http import HtmlResponse
from fake_useragent import UserAgent
import pandas as pd

def main():
    ua = UserAgent()
    user_agent = ua.google
    header = {'user-agent':user_agent,
            'cookie':'__mta=50288153.1592903499896.1593228440839.1593233480830.32; uuid_n_v=v1; uuid=8B336E50B53111EA97185D50074468A79281329F7CC5423C8A89FC35D3E01036; _lxsdk_cuid=172e0727e83c8-04dbe086ddf639-31617402-fa000-172e0727e84c8; _lxsdk=8B336E50B53111EA97185D50074468A79281329F7CC5423C8A89FC35D3E01036; mojo-uuid=cc2261ce3c30687c4dfd85d32147a7b4; recentCis=56%3D10; _csrf=15b31bbed976c7f0b5852780b4fe76976bb73a8b95ed3562230a51e8d242d276; mojo-session-id={"id":"39bcae2143ca7eb3be11274ca2a46298","time":1593312496043}; mojo-trace-id=1; Hm_lvt_703e94591e87be68cc8da0da7cbd0be2=1593278304,1593282725,1593282729,1593312496; Hm_lpvt_703e94591e87be68cc8da0da7cbd0be2=1593312496; __mta=50288153.1592903499896.1593233480830.1593312496822.33; _lxsdk_s=172f8d34a01-36a-23d-fb0%7C%7C2'}
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
