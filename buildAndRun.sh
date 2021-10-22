#!/bin/sh
mvn clean package && docker build -t com.mycompany/Hello_world .
docker rm -f Hello_world || true && docker run -d -p 9080:9080 -p 9443:9443 --name Hello_world com.mycompany/Hello_world