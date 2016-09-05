#
# Cookbook Name:: upfresh-apps
# Recipe:: profile_yum_repos
#
# Copyright 2014, Upfresh
#
# All rights reserved - Do Not Redistribute
#


#
# Centos
#
node.default['yum']['base']['enabled'] = true
#node.default['yum']['base']['mirrorlist'] = nil
#node.default['yum']['base']['baseurl'] = 'https://internal.example.com/centos/6/os/x86_64'
#node.default['yum']['base']['sslverify'] = false
node.default['yum']['updates']['enabled'] = true
#node.default['yum']['updates']['mirrorlist'] = nil
#node.default['yum']['updates']['baseurl'] = 'https://internal.example.com/centos/6/updates/x86_64'
#node.default['yum']['updates']['sslverify'] = false

include_recipe 'yum-centos'


#
# Epel
#
node.default['yum']['epel']['enabled'] = true
#node.default['yum']['epel']['mirrorlist'] = nil
#node.default['yum']['epel']['baseurl'] = 'https://internal.example.com/centos/6/os/x86_64'
#node.default['yum']['epel']['sslverify'] = false

include_recipe 'yum-epel'


#
# Remi
#
node.default['yum']['remi']['enabled'] = true
#node.default['yum']['remi']['mirrorlist'] = nil
#node.default['yum']['remi']['baseurl'] = 'https://internal.example.com/enterprise/5/remi/$basearch/'
#node.default['yum']['remi']['sslverify'] = false

include_recipe 'yum-remi'

#
#Nginx (TODO - parametrize, add spdy)
#
include_recipe 'yum-nginx'

#
# Elasticseasrch
#
node.default['yum']['elasticsearch']['enabled'] = true
#node.default['yum']['elasticsearch']['mirrorlist'] = nil
#node.default['yum']['elasticsearch']['baseurl'] = 'https://internal.example.com/elasticsearch/6/os/x86_64'
#node.default['yum']['elasticsearch']['sslverify'] = false
include_recipe 'yum-elasticsearch'


#
# Mariadb
#
yum_repository 'mariadb-local' do
  description "CentOS-7 - mariadb local repo"
  baseurl "http://192.168.88.203/repos/archive.mariadb.org/mariadb-10.1.14/yum/centos/$releasever/$basearch/"
  gpgkey 'http://192.168.88.203/keys/RPM-GPG-KEY-MariaDB'
  action :create
end


#
# Zap 
#

zap_yum_repos '/etc/yum.repos.d' do
  pattern '*'
  immediately true
end

