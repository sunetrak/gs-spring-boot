FROM openjdk:8-jdk-alpine
gradle clean build -x test
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
