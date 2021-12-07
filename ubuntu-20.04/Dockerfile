FROM ubuntu:20.04

LABEL maintainer="<starrysky starrysky8888@qq.com>"

# close interaction
ENV DEBIAN_FRONTEND noninteractive

COPY clean-layer.sh /bin

RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
    vim \
    wget \
    curl \
    unzip \
    zip \
    bzip2 \
    tzdata \
    locales \
    net-tools \
    iputils-ping \
    build-essential \
    # setup timezone
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    # setup language
    && locale-gen zh_CN.UTF-8 \
    && chmod +x /bin/clean-layer.sh \
    # clean
    && clean-layer.sh

ENV LC_ALL=zh_CN.UTF-8 \
    LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8
