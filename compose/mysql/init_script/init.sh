#!/bin/sh
cd /test_data/
mysql -uroot -pP@ssw0rd < employees.sql
mysql -uroot -pP@ssw0rd < test_employees_md5.sql