FROM gradle:alpine
RUN gradle build --no-daemon 

ARG JAR_FILE=complete/build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
