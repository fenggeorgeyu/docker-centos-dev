FROM fenggeorgeyu/centos-dev:base
MAINTAINER George Yu <fyu@ysu.edu>

RUN yum install -y curl

RUN wget https://static.rust-lang.org/rustup/dist/x86_64-unknown-linux-gnu/rustup-init -O rustup-init

RUN chmod 755 rustup-init

RUN echo 1 | ./rustup-init

RUN rm -f rustup-init

RUN source $HOME/.cargo/env

RUN yum -y clean all


