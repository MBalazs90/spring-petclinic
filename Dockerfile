FROM openjdk:8-jdk-alpine3.8

MAINTAINER Balazs Meszaros

ENV DIR /home

WORKDIR ${DIR}
COPY . ${DIR}

CMD ["mvn","spring-boot:run"]
