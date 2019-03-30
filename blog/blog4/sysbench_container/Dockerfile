FROM centos:centos7
RUN yum -y update; yum clean all
RUN yum -y install mysql net-tools mysql-libs mysql-devel libtool make which git bind-utils; yum clean all
WORKDIR /usr/src
RUN git clone https://github.com/akopytov/sysbench.git
WORKDIR /usr/src/sysbench
RUN git checkout 0.5
RUN chmod +x autogen.sh && \
./autogen.sh && \
./configure --with-mysql-includes=/usr/include/mysql --with-mysql-libs=/lib64/mysql/ && \
make && make install
ADD ./sysbench_script /usr/src/sysbench
