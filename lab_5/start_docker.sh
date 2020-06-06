#!/bin/bash

db_user=db-labs
db_pass=db-labs

db_root_pass=my_secret_pass
docker_container_name=db-labs-mysql

docker run --name=$docker_container_name  -v /home/alex/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$db_root_pass -p 3306:3306 -d mysql:5.7

docker logs db-labs-mysql

docker exec -it db-labs-mysql mysql --user="root" --password="my_secret_password"

CREATE DATABASE EducationalResourceCenter;
CREATE USER 'db-user' IDENTIFIED BY 'my-pass';
GRANT ALL PRIVILEGES ON EducationalResourceCenter.* TO 'db-user';