<%@ page import="java.lang.management.ManagementFactory"%>
<%@ page import="javax.management.*"%>
<%@ page import="java.io.*,java.util.*"%>
<%@page import="java.net.InetAddress"%>
<%!public void dumpMbeans(Set<ObjectInstance> objectInstances, JspWriter out, MBeanServer mbeanServer, String... mbeanAttributes) throws Exception {
        out.write("<table border='1'>");
        
        out.write("<tr>");
        out.print("<th>ObjectName</th>");
        for (String mbeanAttribute : mbeanAttributes) {
            out.print("<th>" + mbeanAttribute + "</th>");
        }
        out.println("</tr>");
        
        for (ObjectInstance objectInstance : objectInstances) {
            ObjectName objectName = objectInstance.getObjectName();            
            out.print("<tr><td>" + objectName + "</td>");
            for (String mbeanAttribute : mbeanAttributes) {
                out.print("<td>" + mbeanServer.getAttribute(objectName, mbeanAttribute) + "</td>");
            }
            out.println("</tr>");
        }
        
        out.println("</table>");
        
    }%>
<html>
<head>
<title>Tomcat JMX</title>
</head>
<body>
<h1>MBeanServers</h1>
<%
    try {
        long startime = (Long) ManagementFactory.getPlatformMBeanServer().getAttribute(new ObjectName("java.lang:type=Runtime"), "StartTime");
        out.write("time: " + new java.sql.Timestamp(System.currentTimeMillis()).toString() + ", start-time: " + new java.sql.Timestamp(startime).toString() +"<br>");
        
        List<MBeanServer> mbeanServers = MBeanServerFactory.findMBeanServer(null);
        for (MBeanServer mbeanServer : mbeanServers) {
            out.println("<h1> MbeanServer domain = " + mbeanServer.getDefaultDomain() + "</h1>");
            {
                out.println("<h2>DataSource</h2>");
                Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName("Catalina:type=DataSource,class=javax.sql.DataSource,*"), null);
                dumpMbeans(objectInstances, out, mbeanServer, "numActive", "numIdle", "maxActive");
                out.write("Total mbeans count <b>" + objectInstances.size() + "</b>");
            }
            {
                out.println("<h2>Http Thread Pools</h2>");
                Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName("Catalina:type=ThreadPool,*"), null);
                dumpMbeans(objectInstances, out, mbeanServer, "currentThreadsBusy", "currentThreadCount", "maxThreads");
                out.write("Total mbeans count <b>" + objectInstances.size() + "</b>");
            }
            {
                out.println("<h2>Http Executors</h2>");
                Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName("Catalina:type=Executor,*"), null);
                dumpMbeans(objectInstances, out, mbeanServer, "activeCount", "queueSize", "poolSize", "completedTaskCount", "maxThreads");
                out.write("Total mbeans count <b>" + objectInstances.size() + "</b>");
            }
            {
                out.println("<h2>Web Modules</h2>");
                // Catalina:j2eeType=WebModule,name=//localhost/cas,J2EEApplication=none,J2EEServer=none
                Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName("Catalina:j2eeType=WebModule,*"), null);
                dumpMbeans(objectInstances, out, mbeanServer, "path", "state", "docBase");
                out.write("<em>State : 0 STARTING, 1 RUNNING, 3 STOPPED, 4 FAILED</em><br/>");
                out.write("Total mbeans count <b>" + objectInstances.size() + "</b>");
            }
            {
                out.println("<h2>Servlets</h2>");
                Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName("Catalina:j2eeType=Servlet,*"), null);
                dumpMbeans(objectInstances, out, mbeanServer, "processingTime", "errorCount", "requestCount");
                out.write("Total mbeans count <b>" + objectInstances.size() + "</b>");
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