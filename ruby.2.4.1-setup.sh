#!/usr/bin/env bash
# repository
cd /tmp
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6-8.noarch.rpm

# system update
yum -y update
yum -y groupinstall "Development Tools"
yum -y install libxslt-devel libyaml-devel libxml2-devel gdbm-devel libffi-devel zlib-devel openssl-devel libyaml-devel readline-devel curl-devel openssl-devel pcre-devel git memcached-devel valgrind-devel mysql-devel ImageMagick-devel ImageMagick

# ruby 2.4.1
version=2.4.1
cd /usr/local/src
wget https://cache.ruby-lang.org/pub/ruby/2.4/ruby-$version.tar.gz
tar zxvf ruby-$version.tar.gz
cd ruby-$version
./configure
make
make install

# ruby-gems
version=2.6.12
cd ..
wget https://rubygems.org/rubygems/rubygems-$version.tgz
tar zxvf rubygems-$version.tgz
cd rubygems-$version
/usr/local/bin/ruby setup.rb

# chef-solo
gem install bundler chef ruby-shadow --no-ri --no-rdoc

#installing packages 
yum install -y python-pip
yum install -y awscli

