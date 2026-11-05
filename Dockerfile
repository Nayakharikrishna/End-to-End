
##artifact build stage
FROM maven AS buildstage
RUN mkdir /opt/End-to-End
WORKDIR /opt/End-to-End
COPY . .
RUN mvn clean install    ## artifact -- .war

### tomcat deploy stage
FROM tomcat
WORKDIR webapps
COPY --from=buildstage /opt/End-to-end/target/*.war .
RUN rm -rf ROOT && mv *.war ROOT.war
EXPOSE 8080
