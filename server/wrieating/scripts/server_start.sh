#!/usr/bin/env bash
cd /home/ec2-user/build

sudo JWT_SECRET_KEY=$JWT_SECRET_KEY AWS_RDS_PASSWORD=$AWS_RDS_PASSWORD AWS_RDS_URL=$AWS_RDS_URL profile=$profile email=$email password=$password nohup java -jar -Dspring.profiles.active=deploy wrieating-0.0.1-SNAPSHOT.jar > /dev/null 2> /dev/null < /dev/null &