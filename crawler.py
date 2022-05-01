import requests
import json

# 获取数据
def Get_json(url, headers):
    req = requests.get(url=url, headers=headers).json().get('data').get('products')
    data = json.dumps(req, indent=1, ensure_ascii=False)  # 输出到json文件
    f = open('favorite.json', 'w+', encoding="utf-8", newline='\n')
    f.write(data)
    return req

# 数据
def screen(req):
    list = []
    for index in range(10):
        price = float(req[index]['price']) / 100
        data = {'name': req[index]['name'],  # 商品名称
                'spec': req[index]['spec'],  # 商品含量
                'price': price,  # 价格
                'title': req[index]['sub_title'],  # 详细信息
                'origin':req[index]['origin']   #产地
                }
        list.append(data)
    return list

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
    url = "https://j1.pupuapi.com/client/marketing/storeproduct/v2/search?business=scenes&business_id=420&category_id=420&in_stock=-1&page=1&size=20&sort=0&store_id=7c1208da-907a-4391-9901-35a60096a3f9&tag=-1"   # 存储json内容输出
    list = screen(Get_json(url, headers))

    for i in range(10):
        print(list[i])
