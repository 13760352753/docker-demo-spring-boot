FROM airdock/oracle-jdk:latest

MAINTAINER Grissom Wang <grissom.wang@daocloud.io>

ENV TIME_ZONE Asia/Shanghai

RUN echo "$TIME_ZONE" > /etc/timezone

WORKDIR /app


COPY spring-boot-admin.jar /app/spring-boot-admin.jar

RUN pwd

CMD [ "java", "-jar", "spring-boot-admin.jar" ]
