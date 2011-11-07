#!/usr/bin/env groovy

import javax.management.ObjectName;
import javax.management.Query;

import groovy.jmx.builder.JmxBuilder;

def cli = new CliBuilder( usage: 'groovy startJmsMessageListenerContainers [-h] -s servername -p port')
cli.h(longOpt:'help', 'usage information')
cli.s(argName:'servername', longOpt:'server', args:1, required:true, type:GString, 'Hostname of the server to connect to (e.g. localhost)')
cli.p(argName:'port', longOpt:'port', args:1, required:true, 'Port of the server to connect to (e.g. 6969)')

def opt = cli.parse(args)

if (!opt) return

if (opt.h) cli.usage()

def jmx = new JmxBuilder()

def jmxClient = jmx.connectorClient (host:opt.s ,port:opt.p)
println("Stop JMS message listeners on $jmxClient")

jmxClient.connect()

def server = jmxClient.getMBeanServerConnection()

// javax.jms:destination=my-destination,name="fr.xebia.springframework.jms.ManagedDefaultMessageListenerContainer#0",type=MessageListenerContainer,host=localhost,path=/production-ready-application
server.queryNames(new ObjectName('javax.jms:type=MessageListenerContainer,*'), null).each { name ->
    def jmsMessageListenerContainer = new GroovyMBean(server, name)
    jmsMessageListenerContainer.stop()
    if (jmsMessageListenerContainer.Running) {
        println("FAILURE to stop jmsMessageListenerContainer $name !")
    } else {
        println("jmsMessageListenerContainer $name successfully stopped")
    }
}
jmxClient.close()
println "JMS message listeners successfully stopped. Bye"
