FROM starrysky8/ubuntu:20.04-zhCN

LABEL maintainer="<starrysky starrysky8888@qq.com>"

ENV CONDA_HOME="/opt/miniconda3"

ENV MINICONDA_PKG="Miniconda3-py39_4.12.0-Linux-x86_64.sh" \
    PATH=${CONDA_HOME}/bin:$PATH 

RUN cd /opt \
    && wget --no-check-certificate https://repo.anaconda.com/miniconda/${MINICONDA_PKG} \
    && /bin/bash ${MINICONDA_PKG} -f -b -p ${CONDA_HOME} \
    && conda clean -ya \
    && rm -f ${MINICONDA_PKG} 




