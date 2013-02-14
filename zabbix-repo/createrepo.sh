#!bin/bash


pkg_base="http://www.kodai74.net/packages/zabbix/zabbix-2.0/rhel/6/x86_64"
pkg_ver="2.0.4-1"
pkg_list="zabbix zabbix-agent zabbix-get zabbix-java-gateway zabbix-proxy zabbix-proxy-mysql zabbix-proxy-pgsql zabbix-proxy-sqlite3 zabbix-sender zabbix-server zabbix-server-mysql zabbix-server-pgsql"
pkg_list_noarch="zabbix-web zabbix-web-japanese zabbix-web-mysql zabbix-web-pgsql"

repo_dir="repo"

[ -x /usr/bin/createrepo ] || exit 0

rm -rf ${repo_dir}
mkdir -p ${repo_dir}
cd ${repo_dir}
cwd=`pwd`

for i in ${pkg_list}; do
	wget ${pkg_base}/${i}-${pkg_ver}.el6.x86_64.rpm
done
for i in ${pkg_list_noarch}; do
	wget ${pkg_base}/${i}-${pkg_ver}.el6.noarch.rpm
done

/usr/bin/createrepo .
cat <<EOF >../zabbix.repo
[zabbix]
name=Zabbix local repository
baseurl=file://${cwd}
gpgcheck=0
enabled=1
EOF

echo Repository Created. 'cp zabbix.repo /etc/yum.repos.d/' by root.
