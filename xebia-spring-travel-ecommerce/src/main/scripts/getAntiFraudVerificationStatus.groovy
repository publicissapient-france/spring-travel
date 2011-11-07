#!/usr/bin/env groovy

import groovy.jmx.builder.JmxBuilder

import javax.management.ObjectName

def cli = new CliBuilder( usage: 'groovy getAntiFraudVerificationStatus [-h] -s servername -p port')
cli.h(longOpt:'help', 'usage information')
cli.s(argName:'servername', longOpt:'server', args:1, required:true, type:GString, 'Hostname of the server to connect to (e.g. localhost)')
cli.p(argName:'port', longOpt:'port', args:1, required:true, 'Port of the server to connect to (e.g. 6969)')

def opt = cli.parse(args)

if (!opt) return

    if (opt.h) cli.usage()

def jmx = new JmxBuilder()

def jmxClient = jmx.connectorClient (host:opt.s ,port:opt.p)

jmxClient.connect()

def server = jmxClient.getMBeanServerConnection()

// expected JMX object name  travel-ecommerce:name=AntiFraudService,type=AntiFraudService,host=localhost,path=/xebia-spring-travel-ecommerce
server.queryNames(new ObjectName('travel-ecommerce:name=AntiFraudService,type=AntiFraudService,host=localhost,path=/xebia-spring-travel-ecommerce'), null).each { name ->
    GroovyMBean bookingAction = new GroovyMBean(server, name)
    println ""
    println "Anti Fraud Service Activation Status: $bookingAction.EnableAntiFraudService"
    println ""
}
jmxClient.close()
