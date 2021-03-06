#!/bin/bash

echo Populating DB in pod $1

sudo docker run -it --rm sysbench sysbench --db-driver=mysql --mysql-host=$1 \
--mysql-port=3306 /usr/share/sysbench/tests/include/oltp_legacy/oltp.lua --oltp-test-mode=complex \                                                                             
--mysql-user=root --mysql-password=password --mysql-db=sysbench --threads=20 --oltp-table-size=1000000 \                                                                        
--oltp-tables-count=20 --time=300 --report-interval=1 prepare

echo Done with pod $1
echo

