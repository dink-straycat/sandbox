zabbix-repo
=======

zabbixをyumで入れられたら楽ちんだよね。

CentOS6.3 64bitで動かしてね。違う環境の場合は適当に変更してちょ。

 yum install git createrepo
 sh create_repo.sh
 su
 cp zabbix.repo /etc/yum.repos.d/
 yum update
 yum install zabbix-server-mysql zabbix-web-mysql ...
