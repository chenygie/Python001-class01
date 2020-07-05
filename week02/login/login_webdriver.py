from selenium import webdriver
import time

try:
    browser = webdriver.Chrome(executable_path='./chromedriver')
    # 需要安装chrome driver, 和浏览器版本保持一致
    # http://chromedriver.storage.googleapis.com/index.html
    
    browser.get('https://shimo.im')
    time.sleep(1)

    btm1 = browser.find_element_by_xpath('//*[@id="homepage-header"]/nav/div[3]/a[2]')
    btm1.click()
    time.sleep(2)
    browser.find_element_by_xpath('//*[@type="mobileOrEmail"]//div/input').send_keys('15055495@qq.com')
    time.sleep(3)
    browser.find_element_by_xpath('//*[@name="password"]').send_keys('test123test456')
    time.sleep(3)
    browser.find_element_by_xpath('//*[@class="StyledLogin-sc-2oZUsG bZrWhJ"]/div[1]/button').click()

    cookies = browser.get_cookies() # 获取cookies
    print(cookies)
    time.sleep(3)

except Exception as e:
    print(e)
finally:    
    browser.close()