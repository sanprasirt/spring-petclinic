FROM anapsix/alpine-java
LABEL maintainer="kuforce@gmail.com"

COPY /target/spring-petclinic-2.0.0.jar /home/spring-petclinic-2.0.0.jar
CMD [ "java", "-jar", "/home/spring-petclinic-2.0.0.jar" ]