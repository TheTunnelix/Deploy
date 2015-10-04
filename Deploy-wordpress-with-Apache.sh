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

`OpenVirtualHost= printf '%s\n' '<VirtualHost *:80>' >> /etc/httpd/conf.d/myweb.conf`
`InsertDocumentRoot= printf '%s\n' 'DocumentRoot /var/www/wordpress' >> /etc/httpd/conf.d/myweb.conf`
#'ServerName www.myweb.com'
#'ServerAlias myweb.com'
#'<Directory /var/www/wordpress>'
#'Options FollowSymlinks'
#'Allow from all'
#'</Directory'
#'ErrorLog /var/log/httpd/wordpress-error-log'
#'CustomLog /var/log/httpd/wordpress-acess-log common'
#'</VirtualHost' >>?> /etc/httpd/conf.d/myweb.conf
