FROM gradle:alpine
COPY complete/* .
WORKDIR /complete
RUN gradle build 

ARG JAR_FILE=complete/build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
