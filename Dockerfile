#mandatory
FROM openjdk:8u212-b04-jdk-stretch
#define parts of container in this case we need add jar file
ADD target/springboot-docker-0.0.1-SNAPSHOT.jar .
#port definision for contener
EXPOSE 8000
#command definition to run image
CMD java -jar springboot-docker-0.0.1-SNAPSHOT.jar
