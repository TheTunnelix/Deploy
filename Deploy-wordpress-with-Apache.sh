#! /bin/bash
# Author -TheTunnelix

# ================================  UPDATE AND INSTALLATION START ====================================

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


# ========================== TWEAKING CONFIGURATION AND SETTING UP VHOST ============================

#Chmodlastest.tar.gz
#chmodwordpress=`chmod + /tmp/latest.tar.gz`

#UntarInto/var/www
#untarWordpress=`tar -xvzf /tmp/latest.tar.gz -C /var/www`

#ChownDocumentRootwordpress
#ChownWordpress=`chown -R apache:apache /var/www/wordpress`

#CreatingTheVhost
#`OpenVirtualHost=     printf '%s\n'    '<VirtualHost *:80>'                          >> /etc/httpd/conf.d/myweb.conf`
#`InsertDocumentRoot=  printf '%s\n'    'DocumentRoot /var/www/wordpress'             >> /etc/httpd/conf.d/myweb.conf`
#`InsertServerName=    printf '%s\n'    'ServerName www.myweb.com'                    >> /etc/httpd/conf.d/myweb.conf`
#`InsertServerAlias=   printf '%s\n'    'ServerAlias myweb.com'                       >> /etc/httpd/conf.d/myweb.conf`
#`OpenDirectory=       printf '%s\n'    '<Directory /var/www/wordpress>'              >> /etc/httpd/conf.d/myweb.conf`
#`InsertOptionsfsym=   printf '%s\n'    'Options FollowSymlinks'                      >> /etc/httpd/conf.d/myweb.conf`
#`InsertAllow=         printf '%s\n'    'Allow from all'                              >> /etc/httpd/conf.d/myweb.conf`
#`CloseDirectory=      printf '%s\n'    '</Directory'                                 >> /etc/httpd/conf.d/myweb.conf`
#`InsertErrorLog=      printf '%s\n'    'ErrorLog /var/log/httpd/error-log'           >> /etc/httpd/conf.d/myweb.conf`
#`InsertAcessLog=      printf '%s\n'    'CustomLog /var/log/httpd/access-log common'  >> /etc/httpd/conf.d/myweb.conf`
#`CloseVirtualHost=    printf '%s\n'    '</VirtualHost>'                              >> /etc/httpd/conf.d/myweb.conf`
# ================================ START MYSQL AND APACHE CONFIGURATION ===================================
#StartService
ServiceMysqlStart= `service mysqld start`
#ServiceApacheStart= `service httpd start`
#StopFirewall
StopFirewall= `service iptables stop`
# ================================= Setting up MySQL Giving root its right ============================================
#update root password and remove test database
updaterootpassword= `mysql -e "UPDATE mysql.user SET Password = PASSWORD('rootpassword') WHERE User = 'root';"`
#Remove anonymous password
RemoveAnonymous= `mysql -e "DROP USER ''@'localhost';"`
#Drop user since hostname varies
bashmagic= `mysql -e "DROP USER ''@'$(hostname)';"`
#Remove demo db
DemoDelete= `mysql -e "DROP DATABASE test;"`
#Changes take effet here
Flush= `mysql -e "FLUSH PRIVILEGES;"`

#Modifying my.cnf

null= `cat /dev/null > /etc/my.cnf`

`Insertmysqld=     printf '%s\n'    '[mysqld]'                          >> /etc/my.cnf`
`Insertdatadir=    printf '%s\n'    'datadir=/var/lib/mysql'            >> /etc/my.cnf`
`InsertSocket=     printf '%s\n'    'socket=/var/lib/mysql/mysql.sock'  >> /etc/my.cnf`
`InsertUsersql=    printf '%s\n'    'user=mysql'                        >> /etc/my.cnf`
`InsertSymbolic=   printf '%s\n'    'symbolic-links=0'                  >> /etc/my.cnf`
`Insertclient=     printf '%s\n'    '[client]'                          >> /etc/my.cnf`
`Insertuserwp=     printf '%s\n'    'user=root'                         >> /etc/my.cnf`
`Insertpasswp=     printf '%s\n'    'password=rootpassword'             >> /etc/my.cnf`

restartmysql= `service mysqld restart`
# ====================================== CREATING DB FOR wordpress ==============================
# Create database for wordpress
Createdb= `mysql -e "CREATE DATABASE mydb;"`
# Create username
CreateUser= `mysql -e "CREATE USER myuser;"`
# Update myuser username for wordpress
UpdateMyUserPassword= `mysql -e "UPDATE mysql.myuser SET Password = PASSWORD('mypassword') WHERE User = 'myuser';"`

