FROM openjdk:11
LABEL "name" = "MunwarAli"
MAINTAINER author = "munwaralijmd@gmail.com"
EXPOSE 8080
ADD target/servertask.jar servertask.jar
ENTRYPOINT ["java", "-jar","/servertask.jar"]
