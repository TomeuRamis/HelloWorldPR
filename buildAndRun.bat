@echo off
call mvn clean package
call docker build -t com.mycompany/Hello_world .
call docker rm -f Hello_world
call docker run -d -p 9080:9080 -p 9443:9443 --name Hello_world com.mycompany/Hello_world