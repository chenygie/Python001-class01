# -*- coding: utf-8 -*-
import scrapy
from bs4 import BeautifulSoup as bs
from maoyanmovie.items import MaoyanmovieItem

class MaoyanSpider(scrapy.Spider):
    name = 'maoyanmovie'
    allowed_domains = ['maoyan.com']
    start_urls = ['http://maoyan.com/']

    # def parse(self, response):
    #     pass

    def start_requests(self):
        # url = 'https://maoyan.com/films?showType=3'
        url = 'file:///Users/chen/OneDrive/geektime/demo/1.html'
        yield scrapy.Request(url=url, callback=self.parse)


    def parse(self, response):
        bs_info = bs(response.text,'html.parser')

        i = 0

        for tags in bs_info.find_all('div',attrs={'class': 'movie-hover-info'}):
            if i < 10:
                item = MaoyanmovieItem()
                print(i)
                movie_name = tags.find('div').find('span',).text
                print(tags.find('div').find('span',).text)
                movie_type = tags.find_all('div', attrs={'class': 'movie-hover-title'})[1].text[4:].strip()
                print(tags.find_all('div', attrs={'class': 'movie-hover-title'})[1].text[4:].strip())
                movie_time = tags.find_all('div', attrs={'class':'movie-hover-title'})[3].text[6:].strip()
                print(tags.find_all('div', attrs={'class':'movie-hover-title'})[3].text[6:].strip())
                i += 1
                item['movie_name'] = movie_name
                item['movie_type'] = movie_type
                item['movie_time'] = movie_time
                yield item
            else:
                break
