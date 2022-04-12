FROM centos:latest
MAINTAINER George Yu <fyu@ysu.edu>

RUN cd /etc/yum.repos.d/ && \
	sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
	sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*


RUN yum install -y epel-release && \
	yum -y update

# basic tools
RUN yum -y install htop wget net-tools && \
	yum -y install gcc gcc-c++ make cmake gdb zlib-devel readline readline-devel git bison flex tcl tcl-devel && \
	yum -y clean all






