FROM openjdk:8
EXPOSE 80
ADD /var/lib/jenkins/workspace/project2/webapp/target   webapp.war .
ENTRYPOINT ["java","-jar","/webapp.war"]
  
