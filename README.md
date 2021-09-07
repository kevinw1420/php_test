# php_test

1. docker-compose up -d at docker-compose.yaml file path
2. wait for 30 seconds
3. execute [/bin/bash ./import_data.sh] at the path of the folder where the docker-compose.yaml is
4. visit http://localhost:80/helloWorld
5. my new site will be displayed
6. backup script at ./compose/mysql/backup/backup.sh
7. the script will backup up all databases exclude information_schema,performance_schema
8. the script will also delete backup up created over 10 days
9. crontab the script if it's needed
10. url http://localhost:8080 is mysql GUI tool
