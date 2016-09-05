#
# Cookbook Name:: upfresh-apps
# Recipe:: profile_collectd
#
# Copyright 2014, Upfresh
#
# All rights reserved - Do Not Redistribute
#

node.default['php']['install_method'] = 'package'
node.default['php']['pear'] = 'pear'
node.default['php']['pecl'] = 'pecl'
node.default['php']['version'] = '5.6.25-1.el7'

include_recipe "php::default"



include_recipe "php::module_curl"
include_recipe "php::module_gd"
include_recipe "php::module_mysql"

package ['php56-php-mcrypt', 'php56-php-intl', 'php56-php-cli', 'php56-php-devel', 'php56-php-fpm', 'php56-php-pdo', 'php56-php-opcache', 'php56-php-mbstring']	

#include_recipe "php::module_pgsql"	
#include_recipe "php::module_sqlite3"
#include_recipe "php::module_imap"	
#include_recipe "php::module_ldap"
#include_recipe "php::module_memcache"	
#include_recipe "php::module_fpdf"
#include_recipe "php::module_apc.rb"
#include_recipe "php::module_apcu.rb"



php_fpm_pool "default" do
  action :install
  listen "127.0.0.1:9000"
end
