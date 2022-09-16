FROM python:3.9.14-slim-bullseye

LABEL maintainer="<starrysky starrysky8888@qq.com>"

# close interaction
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
        vim \
        curl \
        iputils-ping \
        # setup timezone
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get clean

ENV LC_ALL=zh_CN.UTF-8 \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8