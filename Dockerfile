FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]
RUN echo -e $'\
deb http://cn.archive.ubuntu.com/ubuntu/ focal main restricted universe multiverse \n\
deb http://cn.archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse \n\
deb http://cn.archive.ubuntu.com/ubuntu/ focal-backports main restricted universe multiverse \n\
deb http://cn.archive.ubuntu.com/ubuntu/ focal-proposed main restricted universe multiverse \n\
' > /etc/apt/sources.list

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa

RUN apt-get install -y python2 curl

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py && \
    python2.7 get-pip.py && \
    rm get-pip.py


RUN apt-get install -y python-tk
RUN pip2.7 install --no-cache-dir \
    pandas \
    numpy \
    scipy \
    matplotlib \
    mne==0.17 \
    pathlib\
    xlrd==1.2.0

