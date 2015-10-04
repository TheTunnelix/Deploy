#! /bin/bash
# Author -TheTunnelix

#Update the CentOS after minimum install
update=`yum update -y`

#Install repo and do a clean all
repo=`yum install epel-release -y && yum clean all
`
#Install prerequisite tools packages for troubleshooting
tools=`yum install nmap traceroute tcpdump iftop htop w3m vim -y`

#Install the php,mysql,httpd with their prerequisites
installA=`yum install php php-gd php-mysql mysql-server mysql -y`

