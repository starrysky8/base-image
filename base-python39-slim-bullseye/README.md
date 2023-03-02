# 镜像说明

## 镜像信息

1. 基础镜像：python:3.9.14-slim-bullseye
2. 安装一些需要的依赖

## 构建命令

* windows
  * set CURRENT_IMAGE_NAME=base-python:3.9.14-slim-bullseye-cn-220916
  * docker build -t %CURRENT_IMAGE_NAME% .
  * docker tag %CURRENT_IMAGE_NAME% starrysky8/%CURRENT_IMAGE_NAME%
  * docker push starrysky8/%CURRENT_IMAGE_NAME%
* linux
  * export CURRENT_IMAGE_NAME=base-python:3.9.14-slim-bullseye-cn-220916
  * docker build -t $CURRENT_IMAGE_NAME .
  * docker tag $CURRENT_IMAGE_NAME starrysky8/$CURRENT_IMAGE_NAME
  * docker push starrysky8/$CURRENT_IMAGE_NAME

## 同时编译多端镜像，完成后推送

set CURRENT_IMAGE_NAME=starrysky8/base-python:3.9.14-slim-bullseye-cn-230302
docker buildx build -t %CURRENT_IMAGE_NAME% --platform=linux/arm64,linux/amd64 . --push
