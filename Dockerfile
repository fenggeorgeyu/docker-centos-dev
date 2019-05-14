FROM centos:latest
MAINTAINER George Yu <fyu@ysu.edu>

RUN yum install -y epel-release && \
	yum -y update

RUN yum -y install gcc gcc-c++ zlib-devel readline-devel git bison flex flex-devel

RUN yum -y install vim openssl htop

RUN yum -y clean all

EXPOSE 22






