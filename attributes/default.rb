#
# Cookbook Name:: upandfresh-servers
# Recipe:: default
#
#
# All rights reserved - Do Not Redistribute
#

#
# general Settings
#

default['upandfresh-common']['domain'] = "upandfresh.io"

#
# NTP defaults
#

default["ntp"]["servers"] = ['0.pool.ntp.org', '1.pool.ntp.org']

#
# Postfix defaults
#

default["postfix"]["mail_type"] = "master"
default["postfix"]["aliases"] = { "root" => "it" }
default["postfix"]["main"]["mydomain"] = "upandfresh.com"
default["postfix"]["main"]["myorigin"] = "upandfresh.com"
default["postfix"]["main"]["relayhost"] = "[postman.andfresh.io]"
default["postfix"]["main"]["smtp_use_tls"] = "no"
default["postfix"]["main"]["sender_canonical_map_entries"] = {}

#
# Openssh defaults
#

default["openssh"]["server"]["usedns"] = "no"
default["openssh"]["server"]["gssapi_authentication"] = "no"

