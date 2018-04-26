FROM java:8
MAINTAINER Jeremiah Owen "jeremiah.owen@stelligent.com"
ADD target/petclinic.jar app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

EXPOSE 8080