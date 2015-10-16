FROM ubuntu

RUN apt-get update && \
  apt-get install -y wget git curl && \
  apt-get clean

WORKDIR /tmp/chef-install

RUN wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/10.04/x86_64/chef_12.5.1-1_amd64.deb

RUN dpkg -i chef_*.deb

WORKDIR /opt/chef

ADD cookbooks /opt/chef/cookbooks

RUN chef-client -z -o helloworld
