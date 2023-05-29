#!/usr/bin/env bash
cd /home/ec2-user/build
echo "> DEPLOY_JAR 배포"    >> /home/ec2-user/action/deploy.log
sudo JWT_SECRET_KEY=$JWT_SECRET_KEY AWS_RDS_PASSWORD=$AWS_RDS_PASSWORD AWS_RDS_URL=$AWS_RDS_URL profile=$profile email=$email password=$password nohup java -jar -Dspring.profiles.active=deploy wrieating-0.0.1-SNAPSHOT.jar >> /home/ec2-user/action/deploy.log 2>/home/ec2-user/action/deploy_err.log &