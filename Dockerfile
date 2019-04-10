FROM mcr.microsoft.com/java/jdk:8u202-zulu-centos
MAINTAINER nanquanyuhao <nanquanyuhao@foxmail.com>

ENV TIME_ZONE Asia/Shanghai
RUN echo "${TIME_ZONE}" > /etc/timezone \ 
        && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime

COPY zh-CN /zh-CN
RUN rpm -Uvih /zh-CN/RPMS/*rpm \
        && rm -rf /zh-CN