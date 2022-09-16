FROM python:3.9.14-slim-bullseye

LABEL maintainer="<starrysky starrysky8888@qq.com>"

COPY sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
        vim \
        curl \
        iputils-ping \
        locales \
        # setup timezone
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && sed -i "s/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g" /etc/locale.gen \
    && locale-gen zh_CN.UTF-8 \
    && apt-get clean

ENV LC_ALL=zh_CN.UTF-8 \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8