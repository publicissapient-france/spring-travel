#!/bin/sh
#
#
#
# Xebia Spring-Travel environment setup script
#


#
# 1 - Install HSQLDB
#
echo "Extracting HSQLDB..."
unzip -q hsqldb-2.2.5.zip
if [ $? == 0 ]
then
  echo "OK"
else
  echo "KO"
  exit 1
fi
echo ""


#
# 2 - Install Tomcat
#
echo "Extracting Tomcat..."
unzip -q apache-tomcat-7.0.22.zip
if [ $? == 0 ]
then
  echo "OK"
else
  echo "KO"
  exit 1
fi
echo ""

#
# 3 - Install JMeter
#
echo "Extracting JMeter..."
unzip -q jakarta-jmeter-2.5.1.zip
if [ $? == 0 ]
then
  chmod 755 jakarta-jmeter-2.5.1/bin/*.sh
  echo "OK"
else
  echo "KO"
  exit 1
fi
echo ""

#
# Generate the environment variables
#
echo "Generating environment variables..."
rm -f environment.source
echo "#"                                                 >> environment.source
echo "# Environment variables"                           >> environment.source
echo "#"                                                 >> environment.source
echo ""                                                  >> environment.source
echo "export HSQLDB_HOME=$PWD/hsqldb-2.2.5/hsqldb"       >> environment.source
echo "export CATALINA_HOME=$PWD/apache-tomcat-7.0.22"    >> environment.source
echo 'export PATH=$CATALINA_HOME/bin:$PATH'              >> environment.source
echo ""                                                  >> environment.source
echo "#"                                                 >> environment.source
echo "# Aliases"                                         >> environment.source
echo "#"                                                 >> environment.source
echo 'alias run-hsqldb-server="pushd $HSQLDB_HOME/data ' \
     '&& java -classpath ../lib/hsqldb.jar ' \
     'org.hsqldb.server.Server ; popd"'                  >> environment.source
echo 'alias run-hsqldb-webserver="pushd $HSQLDB_HOME/data '\
     '&& java -classpath ../lib/hsqldb.jar ' \
     'org.hsqldb.server.WebServer ; popd"'               >> environment.source
echo 'alias run-hsqldb-manager="pushd $HSQLDB_HOME/data ' \
     '&& java -classpath ../lib/hsqldb.jar ' \
     'org.hsqldb.util.DatabaseManager ; popd"'           >> environment.source
echo ""                                                  >> environment.source
echo "Ok"
echo ""


#
# Explain what happened during setup
#
echo "HSQLDB has been installed in $PWD/hsqldb-2.2.5/hsqldb"
echo "Tomcat 7 has been installed in $PWD/apache-tomcat-7.0.22"
echo "The file environment.source contains every environment variable. You can use it with 'source environment.source'"
echo ""
echo "To start HSQLDB server, use the command 'run-hsqldb-server --database.0 xebia-spring-travel --dbname.0 booking'"
echo "To start HSQLDB manager, use the command 'run-hsqldb-manager'"
echo ""
echo "You may use another database (such as MySQL) to run the application."
echo "In this case, don't forget to explicitely create a user with the following statements :"
echo "  create user 'spring'@'localhost' identified by 'travel';"
echo "  grant all privileges on spring_travel.* to 'spring'@'localhost';"
echo ""
echo "Files to be used by JMeter are located in jakarta-jmeter-2.5.1/data"
echo ""

