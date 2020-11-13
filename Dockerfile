FROM ubuntu

RUN apt update
RUN apt install build-essential bison libffi-dev libgdbm-dev libgdbm-compat-dev libreadline-dev libssl-dev zlib1g-dev -y
RUN apt install wget -y

RUN wget https://cache.ruby-lang.org/pub/ruby/2.7/ruby-2.7.2.tar.gz -P /tmp
RUN tar xf /tmp/ruby-2.7.2.tar.gz -C /tmp
RUN cd /tmp/ruby-2.7.2 && ./configure
RUN cd /tmp/ruby-2.7.2 && make -j
RUN cd /tmp/ruby-2.7.2 && make install
