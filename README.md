# php_test
1. git clone sample database repo
2. copy all sample database files(test_db) to ./compose/mysql/test_data
3. docker-compose up -d at docker-compose.yaml file path
4. /bin/bash import_data.sh(or exec [docker exec php_test_db_1 /bin/bash /init_script/init.sh] at command line)
5. visit http://localhost:80/helloWorld
6. my new site will be displayed
7. backup script at ./compose/mysql/backup/backup.sh
8. the script will backup up all databases exclude information_schema,performance_schema
9. the script will also delete backup up created over 10 days
10. crontab the script if it's needed
11. url http://localhost:8080 is mysql GUI tool
