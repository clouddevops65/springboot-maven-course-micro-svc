#Stage-1 build project with maven

FROM maven AS MAVEN_BUILD
WORKDIR /build
COPY . /build
RUN mvn clean package

#Stage-2 run project

FROM openjdk:latest
WORKDIR /target
COPY --from=MAVEN_BUILD /build/target/*.jar /target/app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
