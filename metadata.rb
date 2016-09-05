name             'upandfresh-apps'
maintainer       'upandfresh'
maintainer_email 'systems@upandfresh.com'
license          'All rights reserved'
description      'Installs/Configures upfresh servers'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{ centos }.each do |os|
    supports os
end

depends "os-hardening"
depends "zap"
depends "yum"
depends "yum-centos"
depends "yum-epel"
depends "yum-remi"
depends "yum-nginx"
depends "yum-elasticsearch"




# Monitoring
depends "nrpe"

#Graphing
depends "collectd-ng"

#Logging
depends "filebeat"

#Applications
depends "php"
depends "nginx"


#Database
depends "redisio"
depends "memcached"
depends "mysql", '< 7.2.0'