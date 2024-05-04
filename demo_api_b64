import ddddocr
import requests
import json
import base64
#base64请求示例

# api_host = 'http://192.168.10.160:3722'
api_host = 'http://localhost:3721'
# 滑块验证码识别示例
with open('target_image.png', 'rb') as f:
    sliding_image = base64.b64encode(f.read()).decode()
with open('bg_image.png', 'rb') as f:
    back_image = base64.b64encode(f.read()).decode()

data = {'slidingImage': sliding_image, 'backImage': back_image, 'simpleTarget': True}
response = requests.post(f'{api_host}/capcode', data=json.dumps(data), headers={'Content-Type': 'application/json'})
print(response.json())

# OCR识别示例
with open('img.png', 'rb') as f:
    image = base64.b64encode(f.read()).decode()
data = {'image': image}
response = requests.post(f'{api_host}/classification', data=json.dumps(data), headers={'Content-Type': 'application/json'})
print(response.json())

# 检测示例
with open('test.jpg', 'rb') as f:
    image = base64.b64encode(f.read()).decode()
data = {'image': image}
response = requests.post(f'{api_host}/detection', data=json.dumps(data), headers={'Content-Type': 'application/json'})
print(response.json())


# 计算示例
with open('test_calc.png', 'rb') as f:
    image = base64.b64encode(f.read()).decode()
data = {'image': image}
response = requests.post(f'{api_host}/calculate', data=json.dumps(data), headers={'Content-Type': 'application/json'})
print(response.json())
