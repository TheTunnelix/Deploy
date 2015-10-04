#! /bin/bash
# Author -TheTunnelix

#Update the CentOS after minimum install
#update=`yum update -y`

#Install repo and do a clean all
#repo=`yum install epel-release -y && yum clean all`

#Install prerequisite tools packages for troubleshooting
#tools=`yum install nmap traceroute tcpdump iftop htop w3m vim wget -y`

#Install the php,mysql,httpd with their prerequisites
#InstallationOfApp=`yum install php php-gd php-mysql mysql-server mysql httpd httpd-devel -y`

#Download wordpress now for installation
#DownloadWordpress=`wget http://wordpress.org/latest.tar.gz -P /tmp`

#Chmodlastest.tar.gz
#chmodwordpress=`chmod + /tmp/latest.tar.gz`

#UntarInto/var/www
#untarWordpress=`tar -xvzf /tmp/latest.tar.gz -C /var/www`

#ChownDocumentRootwordpress
#ChownWordpress=`chown -R apache:apache /var/www/wordpress`

#CreatingTheVhost

`OpenVirtualHost=     printf '%s\n'    '<VirtualHost *:80>'                >> /etc/httpd/conf.d/myweb.conf`
`InsertDocumentRoot=  printf '%s\n'    'DocumentRoot /var/www/wordpress'   >> /etc/httpd/conf.d/myweb.conf`
`InsertServerName=    printf '%s\n'    'ServerName www.myweb.com'          >> /etc/httpd/conf.d/myweb.conf`
`InsertServerAlias=   printf '%s\n'    'ServerAlias myweb.com'             >> /etc/httpd/conf.d/myweb.conf`
`OpenDirectory=       printf '%s\n'    '<Directory /var/www/wordpress>'    >> /etc/httpd/conf.d/myweb.conf`
`InsertOptionsfsym=   printf '%s\n'    'Options FollowSymlinks'            >> /etc/httpd/conf.d/myweb.conf`
`InsertAllow=         printf '%s\n'    'Allow from all'                    >> /etc/httpd/conf.d/myweb.conf`
`CloseDirectory=      printf '%s\n'    '</Directory'                       >> /etc/httpd/conf.d/myweb.conf`
`InsertErrorLog=      printf '%s\n'    '/var/log/httpd/error-log'          >> /etc/httpd/conf.d/myweb.conf`
`InsertAcessLog=      printf '%s\n'    '/var/log/httpd/access-log common'  >> /etc/httpd/conf.d/myweb.conf`
`CloseVirtualHost=    printf '%s\n'    '</VirtualHost'                     >> /etc/httpd/conf.d/myweb.conf`
