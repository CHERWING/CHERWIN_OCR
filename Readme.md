# <h1 align="center">✨CHERWIN_OCR使用指南 ✨</h1>
<img align="right" width="150" src="https://github.com/CHERWING/CHERWIN_SCRIPTS/assets/160421895/691b9f30-7d5c-4b55-8af0-0e8f14b6a424">

# 使用 ddddocr 的最简 API 搭建项目，支持 Docker

本项目地址：[ddddocr](https://github.com/CHERWING/CHERWIN_OCR)

ddddocr项目地址：[ddddocr](https://github.com/sml2h3/ddddocr)


**建议python版本3.10 64位**

# 运行方式

## 最简单运行方式

```shell
# 安装依赖
pip install -r requirements.txt -i https://pypi.douban.com/simple

# 最简单运行方式
python ocr_server.py

```

## docker运行方式

```shell
git clone https://github.com:CHERWING/CHERWIN_OCR.git
# docker怎么安装？百度吧

cd CHERWIN_OCR

# 编译镜像
docker build -t cherwin_ocr.

# 运行镜像
docker run -p 3721:3721 -v /volume1/docker/ocr:/app --name cherwin_ocr cherwin_ocr

```

# 接口

**具体请看demo_api_b64.py或demo_api_bytes.py文件**

正确返回示例：
```
{'result': 284}
{'result': 'iepv'}
{'result': [[50, 7, 67, 24]]}
{'result': 3}
```

