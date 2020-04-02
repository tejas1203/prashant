#!/bin/bash
#add stt user for replcaiton on databse
rootpasswd=root
mysql -uroot -p${rootpasswd} -e "CREATE USER 'sstuser'@'localhost' IDENTIFIED BY 's3cret';"
mysql -uroot -p${rootpasswd} -e "GRANT ALL ON *.* TO 'sstuser'@'%';"
mysql -uroot -p${rootpasswd} -e "FLUSH PRIVILEGES;"


