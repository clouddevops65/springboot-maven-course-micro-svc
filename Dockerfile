FROM openjdk:alpine
COPY target/springboot-maven-course-micro-svc-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
