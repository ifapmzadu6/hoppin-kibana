FROM ubuntu

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y wget

# install java8
RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository ppa:webupd8team/java
RUN sudo apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN sudo apt-get install -y oracle-java8-installer
RUN sudo apt-get install -y oracle-java8-set-default

# install Kibana4

RUN wget --no-verbose https://download.elastic.co/kibana/kibana/kibana-4.1.0-linux-x64.tar.gz
RUN tar zxvf kibana-4.1.0-linux-x64.tar.gz

CMD ["/kibana-4.1.0-linux-x64/bin/kibana"]

