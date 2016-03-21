FROM 172.18.82.3:5000/docker-jre8

MAINTAINER Flávio Ferreira <flaviommferreira@gmail.com>

# expose Jolokia and Hazelcast (for Cellar)
EXPOSE 8778 5701 5005 8181 8101

ENV KARAF_VERSION 4.0.4
ENV KARAF_HOME /karaf
ENV DEPLOY_DIR $KARAF_HOME/deploy
ENV JOLOKIA_VERSION 1.3.2
ENV JAVA_HOME /usr/jdk1.8.0_31

WORKDIR /tmp
# download, extract and install Karaf
COPY apache-karaf-${KARAF_VERSION}.tar.gz /tmp/
RUN ( tar xf apache-karaf-${KARAF_VERSION}.tar.gz ) && \
    mv apache-karaf-${KARAF_VERSION} ${KARAF_HOME} && \
    rm -rf /tmp/apache-karaf-${KARAF_VERSION}.tar.gz && \
    rm -rf ${KARAF_HOME}/deploy/*

# Download jolokia agent
# RUN wget http://central.maven.org/maven2/org/jolokia/jolokia-jvm/${JOLOKIA_VERSION}/jolokia-jvm-${JOLOKIA_VERSION}-agent.jar -O ${KARAF_HOME}/jolokia-agent.jar
COPY jolokia-agent.jar ${KARAF_HOME}/
ENV KARAF_OPTS -javaagent:/$KARAF_HOME/jolokia-agent.jar=host=0.0.0.0,port=8778,authMode=jaas,realm=karaf,user=karaf,password=karaf,agentId=$HOSTNAME
ENV PATH $PATH:$KARAF_HOME/bin

# ADD users.properties /karaf/etc/

CMD ["karaf"]
