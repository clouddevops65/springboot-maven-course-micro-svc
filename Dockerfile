FROM openjdk:latest
MAINTAINER jani123@gmail.com
WORKDIR /app
COPY target/*.jar ./app.jar
EXPOSE 8085
CMD ["java","-jar","app.jar"]
