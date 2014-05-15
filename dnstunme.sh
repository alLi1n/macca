#!/bin/sh
wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release-6-8.noarch.rpm
yum install -y iodine
iodined -c  10.1.5.1 -P 1234gosok dnstunme.mooo.com 
