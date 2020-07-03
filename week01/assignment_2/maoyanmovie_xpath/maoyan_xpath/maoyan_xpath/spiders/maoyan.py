# -*- coding: utf-8 -*-
import scrapy
from maoyan_xpath.items import MaoyanXpathItem
from scrapy.selector import Selector

class MaoyanSpider(scrapy.Spider):
    name = 'maoyan_xpath'
    allowed_domains = ['maoyan.com']
    start_urls = ['http://maoyan.com/']

    def start_requests(self):
        # url = 'https://maoyan.com/films?showType=3'
        url = 'file:///Users/chen/OneDrive/geektime/demo/1.html'
        yield scrapy.Request(url,callback=self.parse,dont_filter=False)

    def parse(self, response):
        print(response.url)
        movies = Selector(response=response).xpath('//div[@class="movie-hover-info"]')
        i = 0
        for movie in movies:
            if i < 10:
                i += 1
                item = MaoyanXpathItem()
                movie_name = movie.xpath('./div[1]/@title')
                movie_type = movie.xpath('./div[2]/text()[2]')
                movie_time = movie.xpath('./div[4]/text()[2]')
                # print('1-----------')
                # print(movie_name)
                # print(movie_type)
                # print(movie_time)
                # print('2-----------')
                # print(movie_name.extract())
                # print(movie_type.extract())
                # print(movie_time.extract())
                # print('3-----------')
                # print(movie_name.extract_first())
                # print(movie_type.extract_first())
                # print(movie_time.extract_first())
                print('4-----------')
                print(movie_name.extract_first().strip())
                print(movie_type.extract_first().strip())
                print(movie_time.extract_first().strip())

                item['movie_name'] = movie_name.extract_first().strip()
                item['movie_type'] = movie_type.extract_first().strip()
                item['movie_time'] = movie_time.extract_first().strip()

                yield item
            else:
                break
