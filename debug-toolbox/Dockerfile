FROM starrysky8/ubuntu:20.04-zhCN

RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
    procps \
    cron \
    apache2-utils \
    dnsutils \
    python3 \
    python3-pip \
    && clean-layer.sh

RUN pip3 install --no-cache-dir flask

COPY web-server.py /opt/web-server.py
CMD python3 /opt/web-server.py

