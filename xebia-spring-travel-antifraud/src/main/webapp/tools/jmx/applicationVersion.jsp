<%@ page import="java.lang.management.ManagementFactory"%>
<%@ page import="javax.management.*"%>
<%@ page import="java.io.*,java.util.*"%>
<%@page import="java.net.InetAddress"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<html>
<head>
<title>Application Version</title>
</head>
<body>
<h1>Application Version</h1>
<%
    try {
        java.sql.Timestamp applicationStartupDate = WebApplicationContextUtils.getWebApplicationContext(application) == null ? null
                : new java.sql.Timestamp(WebApplicationContextUtils.getWebApplicationContext(application).getStartupDate());

        out.println("Server=" + InetAddress.getLocalHost() + ", current date: "
                + new java.sql.Timestamp(System.currentTimeMillis()).toString() + ", application startup date="
                + applicationStartupDate + "<br>");

        List<MBeanServer> mbeanServers = MBeanServerFactory.findMBeanServer(null);
        for (MBeanServer mbeanServer : mbeanServers) {

            Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName(
                    "fr.xebia:type=WebApplicationMavenInformation,*"), null);
            for(ObjectInstance objectInstance : objectInstances) {
                Object version = mbeanServer.getAttribute(objectInstance.getObjectName(), "FullyQualifiedArtifactIdentifier");
                out.println("<p>Application version:<strong>" + version + "</strong></p>");
            }
        }
    } catch (Throwable e) {
        out.println("<pre>");
        PrintWriter printWriter = new PrintWriter(out);
        e.printStackTrace(printWriter);
        out.println("</pre>");
        printWriter.flush();
    }
%>
</body>
</html>