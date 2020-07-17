FROM gradle:alpine
COPY . .
RUN gradle build --no-daemon 

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
