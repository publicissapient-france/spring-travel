JAVA_HOME=/home/ec2-user/jdk1.6.0_24
export JAVA_HOME

APPDYNAMICS_CONTROLLER_HOST_NAME=app-dynamics-server-1921191298.eu-west-1.elb.amazonaws.com
APPDYNAMICS_CONTROLLER_PORT=80
APPDYNAMICS_AGENT_APPLICATION_NAME=xebia-spring-travel
APPDYNAMICS_AGENT_NODE_NAME=xebia-spring-travel-$HOSTNAME
APPDYNAMICS_AGENT_TIER_NAME=e-commerce

export APPDYNAMICS_CONTROLLER_HOST_NAME APPDYNAMICS_CONTROLLER_PORT APPDYNAMICS_AGENT_APPLICATION_NAME APPDYNAMICS_AGENT_NODE_NAME APPDYNAMICS_AGENT_TIER_NAME

PUBLIC_IP_ADDRESS=`curl http://169.254.169.254/latest/meta-data/public-ipv4`
export PUBLIC_IP_ADDRESS

CATALINA_OPTS_JMX=" \
   -Djava.rmi.server.hostname=$PUBLIC_IP_ADDRESS \
   -Dcom.sun.management.jmxremote.ssl=false \
   -Dcom.sun.management.jmxremote.authenticate=false"

CATALINA_OPTS_APP_DYNAMICS="-javaagent:/home/ec2-user/appdynamics-app-server-agent/javaagent.jar"

CATALINA_OPTS_JVM=" \
	-server \
	-XX:MaxPermSize=128m -Xmx350m \
	-XX:+HeapDumpOnOutOfMemoryError \
	-XX:HeapDumpPath=$CATALINA_BASE/logs/ \
	-Djava.awt.headless=true"
	
CATALINA_OPTS="
   -server $CATALINA_OPTS \
   $CATALINA_OPTS_JMX \
   $CATALINA_OPTS_APP_DYNAMICS
   $CATALINA_OPTS_JVM"

export CATALINA_OPTS
