FROM gradle:6.5.1-jdk8
ADD --chown=gradle . .
COPY . .
RUN gradle build

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
