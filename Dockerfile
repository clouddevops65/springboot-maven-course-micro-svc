FROM openjdk:8
COPY target/springboot-maven-course-micro-svc-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
