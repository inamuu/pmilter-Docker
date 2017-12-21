FROM centos:7

RUN yum install -y \
    git \
    telnet \
    mailx \
    rsyslog \
    vim \
    iproute \
    postfix

RUN yum install -y \
    ruby \
    gcc \
    gcc-c++ \
    make \
    cmake \
    autoconf \
    automake \
    libtool \
    bison \
    ; \
    yum clean all

RUN rpm -ivh https://downloads.sourceforge.net/project/kenzy/special/C7/x86_64/ragel-6.8-3.el7.centos.x86_64.rpm

COPY etc/postfix/main.cf /etc/postfix/main.cf

WORKDIR /usr/local/src/

RUN git clone https://github.com/matsumotory/pmilter.git

CMD ["/sbin/init"]
