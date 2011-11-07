#!/usr/bin/env groovy

def cli = new CliBuilder( usage: 'groovy sendJmsMessage.groovy [-h] -url activemqurl -q myJmsQueue [-u username] [-p password] this is my text message')
cli.h(longOpt:'help', 'usage information')
cli.url(argName:'url', longOpt:'url', args:1, required:true, type:GString, 'ActiveMQ connection url (e.g. tcp://localhost:61616)')
cli.u(argName:'username', longOpt:'username', args:1, required:false, type:GString, 'ActiveMQ connection username')
cli.p(argName:'password', longOpt:'password', args:1, required:false, type:GString, 'ActiveMQ connection password')
cli.q(argName:'queue', longOpt:'queue', args:1, required:true, type:GString, 'Queue name (e.g. hello-world-queue)')

def opt = cli.parse(args)

if (!opt) return

if (opt.h) cli.usage()

// IMPORTS
@GrabResolver(name="central",root="http://repo1.maven.org/maven2/",m2compatible=true)
@Grab(group='com.google.guava', module='guava', version='r09')
@Grab(group="org.apache.geronimo.specs", module="geronimo-jms_1.1_spec", version="1.1.1")
@Grab(group='org.apache.activemq', module='activemq-core', version='5.5.0')
@Grab(group='org.apache.activemq', module='activemq-core', version='5.5.0')
@Grab(group='ch.qos.logback', module='logback-classic', version='0.9.28')

import javax.jms.Connection
import javax.jms.DeliveryMode
import javax.jms.Message
import javax.jms.MessageProducer
import javax.jms.Queue
import javax.jms.Session
import javax.jms.TextMessage

import com.google.common.base.Joiner;
import org.apache.activemq.ActiveMQConnectionFactory

// COMMAND LINE PARAMETERS
def activeMqUrl = opt.url 

def activeMqUsername = null
if (opt.u) activeMqUsername = opt.u

def activeMqPassword = null
if(opt.p) activeMqPassword = opt.p

def queueName = opt.q

def message = 'hello Groovy world !'

if(!opt.arguments().isEmpty()) message = Joiner.on(" ").join(opt.arguments())

println "Send a jms text message to url=$activeMqUrl username=$activeMqUsername queue=$queueName message=$message"


// JMS STUFF
ActiveMQConnectionFactory connectionFactory = new ActiveMQConnectionFactory(activeMqUrl)

Connection connection
if(activeMqUsername) {
    connection = connectionFactory.createConnection(activeMqUsername, activeMqPassword)
} else {
    connection = connectionFactory.createConnection()
}

Session session = connection.createSession (false, Session.AUTO_ACKNOWLEDGE )

Queue queue = session.createQueue(queueName)

TextMessage jmsMessage = session.createTextMessage (message)

MessageProducer messageProducer = session.createProducer(queue)

long messageTimeToLiveInMillis = 5 * 60 * 1000

messageProducer.send(jmsMessage, DeliveryMode.NON_PERSISTENT, Message.DEFAULT_PRIORITY, messageTimeToLiveInMillis)

println "Sent: $jmsMessage"

messageProducer.close()
session.close()
connection.close()

println "Bye"