#!/bin/bash
cd /opt
#install java
wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" https://download.oracle.com/otn-pub/java/jdk/16.0.2%2B7/d4a915d82b4c4fbb9bde534da945d746/jdk-16.0.2_linux-x64_bin.rpm
rpm -ivh jdk-16.0.2_linux-x64_bin.rpm
#install tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.54/bin/apache-tomcat-9.0.54-windows-x64.zip
unzip apache-tomcat-9.0.54-windows-x64.zip
mv apache-tomcat-9.0.54 tomcat
chmod -R 700 tomcat 
cd tomcat/bin/
./startup.sh 