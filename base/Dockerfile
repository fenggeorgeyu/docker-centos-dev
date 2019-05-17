FROM centos:latest
MAINTAINER George Yu <fyu@ysu.edu>

RUN yum install -y epel-release && \
	yum -y update

# basic tools
RUN yum -y install htop wget && \
	yum -y install gcc gcc-c++ make gdb zlib-devel readline-devel git bison flex flex-devel && \
	yum -y clean all






