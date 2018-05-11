#!/bin/bash

echo "获取服务程序..."
wget -d -v -c https://github.com/KISSMonX/filebrowser/raw/master/bin/filebrowser
chmod a+x filebrowser
mv filebrowser ZoboxFB

echo "创建工作目录..."
mkdir -p filebrowser/
mkdir -p filebrowser/metlight
mkdir -p filebrowser/metlight/zobox

mv ZoboxFB filebrowser/

cd filebrowser/

echo "文件信息..."
ls -lh
file ZoboxFB

./ZoboxFB --port 7000 --database metlight.db --log metlight.log --scope metlight &

echo "服务已启动!"
