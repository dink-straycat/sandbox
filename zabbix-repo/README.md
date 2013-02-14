zabbix-repo
=======

zabbixをyumで入れられたら楽ちんだよね。  
CentOS6.3 64bitで動かしてね。違う環境の場合は適当に変更してちょ。

    yum install git createrepo
    sh create_repo.sh
    su
    cp zabbix.repo /etc/yum.repos.d/
    yum update
    yum install zabbix-server-mysql zabbix-agent zabbix-web-mysql zabbix-web-japanese mysql-server
    service mysqld start
    mysql -uroot
    create database zabbix charset utf8;
    create user 'zabbix'@'localhost' identified by 'password';
    grant all on zabbix.* to 'zabbix'@'localhost';
    exit
    mysql -uroot zabbix < /usr/share/doc/zabbix-server-mysql-2.0.4/create/schema.sql 
    mysql -uroot zabbix < /usr/share/doc/zabbix-server-mysql-2.0.4/create/images.sql 
    mysql -uroot zabbix < /usr/share/doc/zabbix-server-mysql-2.0.4/create/data.sql 
    ...
