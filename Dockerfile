FROM adoptopenjdk/openjdk11

ENV APP_HOME=/target//

WORKDIR $APP_HOME

COPY target/*.jar api-gateway.jar

EXPOSE 5555/tcp 80 403
#EXPOSE 0.0.0.0:5555

CMD ["java", "-jar", "-Dspring.profiles.active=docker", "api-gateway.jar"]