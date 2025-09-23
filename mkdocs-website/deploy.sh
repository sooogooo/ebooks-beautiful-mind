#!/bin/bash

# MkDocs Website Deployment Script
# 用于构建和部署MkDocs网站

echo "正在安装依赖..."
pip install -r requirements.txt

echo "正在构建网站..."
mkdocs build

echo "网站构建完成！"
echo "静态文件位于 site/ 目录中"
echo "您可以将 site/ 目录上传到任何静态网站托管服务"

# 可选：启动本地预览服务器
read -p "是否启动本地预览服务器？(y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "启动本地预览服务器..."
    mkdocs serve
fi