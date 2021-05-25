from selenium import webdriver
url = 'https://www.amazon.com'
browser = webdriver.Chrome()
browser.get(url)
browser.find_element_by_xpath('//*[@id="lhEvwy-L9yN_BQO52ety-g"]/div[2]/a').click()