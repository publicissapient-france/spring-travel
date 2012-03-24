set JAVA_OPTS=-client -XX:+PrintGCDetails -XX:+UseSerialGC -Xmx512m -XX:MaxPermSize=128M
set CATALINA_OPTS=-Dcom.sun.management.jmxremote -Djava.rmi.server.hostname=localhost -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false
