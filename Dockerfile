FROM adoptopenjdk/openjdk11:alpine-jre

WORKDIR /app

VOLUME /config

ADD target/*.jar /app/application.jar

EXPOSE 8080

CMD java $JAVA_OPTS -jar /app/application.jar --spring.config.location=file:///app/src/main/resources/application.yml,file:///config/application.yml