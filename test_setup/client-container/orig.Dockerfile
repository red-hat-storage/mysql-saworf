FROM centos:centos7
RUN yum -y update; yum clean all
RUN yum -y install mysql net-tools wget; yum clean all
