FROM amd64/openjdk:8-jre-slim
VOLUME /tmp
EXPOSE 9052
ADD target/hello_world-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]