FROM centos:centos7
MAINTAINER toughcloud <support@toughstruct.com>

RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y wget gcc git redis beanstalkd vim htop crontabs zip unzip tcpdump \
        libffi-devel openssl openssl-devel \
        python-devel python-setuptools \
        libjpeg-devel libpng-devel czmq czmq-devel \
        supervisor mysql-devel MySQL-python && \
        test -f /usr/local/bin/supervisord || ln -s `which supervisord` /usr/local/bin/supervisord && \
        test -f /usr/local/bin/supervisorctl || ln -s `which supervisorctl` /usr/local/bin/supervisorctl 

RUN yum clean all

RUN echo "set nocompatible" >> /root/.vimrc && echo "set backspace=2" >> /root/.vimrc
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN easy_install -U pip
RUN pip install Click
RUN pip install Mako
RUN pip install Beaker
RUN pip install MarkupSafe
RUN pip install PyYAML
RUN pip install Twisted
RUN pip install cyclone
RUN pip install six
RUN pip install pycrypto
RUN pip install pyOpenSSL>=0.14
RUN pip install service_identity
RUN pip install SQLAlchemy
RUN pip install redis
RUN pip install pyzmq
RUN pip install txzmq
RUN pip install pybeanstalk
RUN pip install requests
RUN pip install Pillow
RUN pip install treq
RUN pip install qrcode
RUN pip install dict2xml
RUN pip install msgpack-python
RUN pip install psutil
RUN pip install txweb
RUN pip install txmongo
RUN pip install txradius
RUN pip install txportal
RUN pip install tablib
RUN pip install autobahn
RUN pip install IPy
RUN pip install evernote
RUN pip install python-memcached
RUN pip install wechat-sdk


