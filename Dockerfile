FROM openjdk:8
EXPOSE 80
ADD webapp/target/webapp.war webapp.war
ENTRYPOINT ["java", "-jar", "/webapp.war"]
