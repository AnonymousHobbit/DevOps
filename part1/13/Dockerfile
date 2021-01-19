FROM openjdk:8-alpine

WORKDIR /work
COPY ./java-example .

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
EXPOSe 8080
