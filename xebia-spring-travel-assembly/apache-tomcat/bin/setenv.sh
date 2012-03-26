export JAVA_OPTS="-client -XX:+PrintGCDetails -Xloggc:$CATALINA_HOME/logs/GC.log -XX:+UseSerialGC -Xmx512m -XX:MaxPermSize=128M"
export CATALINA_OPTS=" -Dcom.sun.management.jmxremote -Dcom.sun.jmxremote.port=8084 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
