#
# Cookbook Name:: upfresh-apps
# Recipe:: profile_mariadb
#
# Copyright 2014, Upfresh
#
# All rights reserved - Do Not Redistribute
#

package ['MariaDB-common', 'MariaDB-client', 'MariaDB-server']

service 'mariadb' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
