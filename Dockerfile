FROM centos:latest
MAINTAINER George Yu <fyu@ysu.edu>

RUN yum install -y epel-release && \
	yum -y update && \
	yum -y clean all

RUN yum -y install vim openssl

RUN yum -y install gcc gcc-c++ zlib-devel readline-devel git

EXPOSE 22






