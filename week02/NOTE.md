学习笔记
# tips 1 : 仓库切换
从github切换到gitee，这里有些同学可能和我一样，一直使用的是github，所以切换到gitee上，需要注意添加公钥的问题：
* 查看是否有密钥
ls -al ~/.ssh
* 复制已有公钥
more ~/.ssh/id_rsa.pub
* 将复制的公钥添加到gitee上
* 测试是否成功配置
ssh -T git@git.oschina.net 
# tips 2 : redis 安装
充分利用Mac的优势
brew install redis
这种方式简单，避免了繁琐的环境变量设置
export PATH=$PATH:$HOME/Downloads/redis-stable/src 
# tips 3 : mysql数据库导出操作
mysqldump -u root -p maoyan movies>maoyan_movies.sql
# tips 4: chrome webdriver版本选择
Current Releases
If you are using Chrome version 84, please download ChromeDriver 84.0.4147.30
If you are using Chrome version 83, please download ChromeDriver 83.0.4103.39
If you are using Chrome version 81, please download ChromeDriver 81.0.4044.138
For older version of Chrome, please see below for the version of ChromeDriver that supports it.






