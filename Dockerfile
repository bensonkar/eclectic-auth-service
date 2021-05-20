
#FROM  maven:3.6-openjdk-8
#USER root
#WORKDIR /auth-service
#COPY . .
#RUN mvn package
#
#FROM openjdk:8-jdk-alpine
#WORKDIR /auth-service
#ARG JAR_FILE=/auth-service/target/*.jar
#COPY --from=0 ${JAR_FILE} auth.jar
#ENTRYPOINT ["java","-jar","auth.jar"]

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} auth.jar
ENTRYPOINT ["java","-jar","/auth.jar"]