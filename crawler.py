import requests
import json
import pymysql

# 获取数据
def Get_json(url, headers):
    req = requests.get(url=url, headers=headers).json().get('data').get('products')
    data = json.dumps(req, indent=1, ensure_ascii=False)  # 输出到json文件
    f = open('favorite.json', 'w+', encoding="utf-8", newline='\n')
    f.write(data)
    return req


# 处理数据
def screen(req):
    connect = pymysql.connect(host='localhost',
                              port=3306,
                              user='root',
                              passwd='123456',
                              charset='utf8',
                              )
    cursor = connect.cursor()
    cursor.execute("DROP DATABASE IF EXISTS pupu")
    cursor.execute(" create database pupu")
    cursor.execute("use pupu")
    cursor.execute(
        "create table products (name  VARCHAR (255) PRIMARY KEY,price  DECIMAL (6,3),spec  VARCHAR (255),origin   VARCHAR (255),sub_title VARCHAR(255))character set utf8 collate utf8_general_ci")
    sql = "INSERT INTO products (name,peice,spec,origin,sub_title) VALUES ('%s',%.2f,'%s','%s','%s')"

    list = []
    for index in range(10):
        price = float(req[index]['price']) / 100
        data = (req[index]['name'], price, req[index]['spec'],req[index]['origin'], req[index]['sub_title'])
        cursor.execute(sql % data)
        connect.commit()
     # # 关闭连接
    cursor.close()
    connect.close()

if __name__ == '__main__':
    # 头部信息，用来模拟浏览器发送请求
    headers = {
        'Accept': '*/*',
        'Accept-Encoding': 'gzip;q=1.0, compress;q=0.5',
        'Accept-Language': 'zh-Hans-CN;q=1.0',
        'User-Agent': 'Pupumall/2.9.0;iOS 14.4;D7CC2F22-7AA0-47B9-991E-44B33EA43CE6',
        'Connection': 'Keep-Alive',
        'Host': 'j1.pupuapi.com'
    }
    # json文件路径
    url = "https://j1.pupuapi.com/client/marketing/storeproduct/v2/search?business=scenes&business_id=420&category_id=420&in_stock=-1&page=1&size=20&sort=0&store_id=7c1208da-907a-4391-9901-35a60096a3f9&tag=-1"  # 存储json内容输出
    screen(Get_json(url, headers))
