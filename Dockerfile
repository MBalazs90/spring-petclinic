FROM openjdk:8-jdk-alpine3.8

ENV DIR /home

WORKDIR ${DIR}
COPY . ${DIR}

CMD ["sh","mvnw","spring-boot:run"]
