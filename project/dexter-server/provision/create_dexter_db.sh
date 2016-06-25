#! /usr/bin/env bash

echo -e "\n-- create Dexter DB --\n"

#wget -O dexter-db.sql https://dexter.atlassian.net/wiki/download/attachments/524291/dexter-db.sql?version=1

mysql -u root -p1234 -e "create database if not exists my_dexter_db; GRANT ALL PRIVILEGES ON my_dexter_db.* TO 'dexter-user'@'localhost' IDENTIFIED BY 'mypassword'"

mysql -u dexter-user -pmypassword my_dexter_db < /vagrant/config/ddl.sql