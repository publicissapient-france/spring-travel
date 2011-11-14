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
echo 'alias run-hsqldb-server="cd $HSQLDB_HOME/data ' \
     '&& java -classpath ../lib/hsqldb.jar ' \
     'org.hsqldb.server.Server"'                         >> environment.source
echo 'alias run-hsqldb-webserver="cd $HSQLDB_HOME/data '\
     '&& java -classpath ../lib/hsqldb.jar ' \
     'org.hsqldb.server.WebServer"'                      >> environment.source
echo 'alias run-hsqldb-manager="cd $HSQLDB_HOME/data ' \
     '&& java -classpath ../lib/hsqldb.jar ' \
     'org.hsqldb.util.DatabaseManager"'                  >> environment.source
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
echo "To start Tomcat server, use the command 'startup.sh'"
echo "Don't forget to set the CATALINA_OPTS environment variable with \"export CATALINA_OPTS='-Xms256M -Xmx1G'\""
echo ""


