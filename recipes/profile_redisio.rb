#
# Cookbook Name:: upfresh-apps
# Recipe:: profile_
#
# Copyright 2014, Upfresh
#
# All rights reserved - Do Not Redistribute
#

node.default['redisio']['package_install'] = true
node.default['redisio']['package_name'] = 'redis'
node.default['redisio']['version'] = '2.8.19-2.el7'

include_recipe "redisio::default"