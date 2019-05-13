FROM centos:latest
MAINTAINER George Yu <fyu@ysu.edu>

RUN yum update 

RUN yum install -y epel-release

RUN yum update && yum upgrade -y

RUN yum -y install vim openssl

RUN yum -y install gcc zlib-devel readline-devel

EXPOSE 22


