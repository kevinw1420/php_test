#!/bin/bash


root_dir=/backup
cd ${root_dir}
db_name_list=($(mysql  -uroot -pP@ssw0rd  --execute="show databases" | awk '{print $1}'| grep -Ev '^(Database|information_schema|performance_schema)$'))
backup_time=$(date +"%Y%m%d%H")
mkdir ${backup_time}
cd ./${backup_time}
for db_name in ${db_name_list[@]};
do
    filename="mysql-${backup_time}-${db_name}"
    echo "back up -> ${filename}.sql"
    mysqldump -uroot -pP@ssw0rd --databases ${db_name}  --single-transaction > ${db_name}.sql 
    tar zcvf  ./${filename}.tar.gz ./${db_name}.sql
    rm ./${db_name}.sql
done

backup_list=($(find ${root_dir} -maxdepth 1 -type d  -mtime +10 |awk '{if (NR>1){print $1}}'))    
for backup_folder in ${backup_list[@]};
do
    rm -r ${backup_folder}
done




