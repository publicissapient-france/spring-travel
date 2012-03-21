This project is a demo application used by Xebia France as workshop material. The source code is a fork of spring-travel provided by SpringSource.

To install the application follow these steps:

#1 Set up the environment (from spring-travel/xebia-spring-travel-environment-installer/)
$ ./setup-environment.sh

#2 Deploy the application
$ mvn clean install -Pdeployment

#3 Configure environment variables (from spring-travel/xebia-spring-travel-environment-installer/)
$ source environment.source

#4 Start HSQLDB (from spring-travel/xebia-spring-travel-environment-installer/hsqldb-2.2.5/hsqldb/bin)
$ ./runServer.sh

#5 Start Tomcat (spring-travel/xebia-spring-travel-environment-installer/apache-tomcat-7.0.22/bin)
$ ./startup.sh
