#!/bin/sh
git clone git@github.com:datacharmer/test_db.git;
cd ./test_db;
cp -r . ../compose/mysql/test_data;
docker exec php_test_db_1 /bin/bash /init_script/init.sh;
