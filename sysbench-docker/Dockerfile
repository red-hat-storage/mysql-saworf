FROM centos:latest
MAINTAINER dotNetDR dotnetdr1987@gmail.com

RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
yum install -y sysbench && \
yum install -y curl && \
yum install -y git && \
yum install -y make && \
yum install -y gcc && \
yum install -y unzip && \
yum install -y wget && \
yum install -y lua-5.1.4 && \
yum install -y lua-devel

RUN wget https://luarocks.org/releases/luarocks-2.4.3.tar.gz && \
tar zxpf luarocks-2.4.3.tar.gz &&\
cd luarocks-2.4.3 &&\
./configure  &&\
make &&\
make install

