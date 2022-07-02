FROM openjdk:8
EXPOSE 6060:8085
ADD target/https://repo.spring.io/ui/api/v1/download?repoKey=release&path=org%252Fspringframework%252Fspring%252F1.0%252Fspring-1.0.jar https://repo.spring.io/ui/api/v1/download?repoKey=release&path=org%252Fspringframework%252Fspring%252F1.0%252Fspring-1.0.jar
WORKDIR $JAVA_HOME
ENTRYPOINT ["java","-jar","https://repo.spring.io/ui/api/v1/download?repoKey=release&path=org%252Fspringframework%252Fspring%252F1.0%252Fspring-1.0.jar"]
CMD ["java","-Dspring.data.mongodb.uri=mongidb://mongo:27017/spring-mongo","-Djava.security.egd=file"]

