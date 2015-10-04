#! /bin/bash
# Author -TheTunnelix

#Update the CentOS after minimum install
update=`yum update -y`

#Install repo and do a clean all
repo=`yum install epel-release -y && yum clean all
`
#Install prerequisite tools packages for troubleshooting
tools=`yum install nmap traceroute tcpdump iftop htop w3m vim wget -y`

#Install the php,mysql,httpd with their prerequisites
InstallationOfApp=`yum install php php-gd php-mysql mysql-server mysql httpd httpd-devel -y`

#Download wordpress now for installation
Wordpress=`wget http://wordpress.org/latest.tar.gz -P /tmp`

#Chmodlastest.tar.gz
chmodlatest=`chmod + /tmp/latest.tar.gz`

#UntarInto/var/www
untar=`tar -xvzf /tmp/latest.tar.gz -C /var/www`

