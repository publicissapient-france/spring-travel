<%@ page import="java.lang.management.ManagementFactory"%>
<%@ page import="javax.management.*"%>
<%@ page import="java.io.*,java.util.*"%>
<%@page import="java.net.InetAddress"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%!
	public void dumpMbeans(Set<ObjectInstance> objectInstances, JspWriter out, MBeanServer mbeanServer, String... mbeanAttributes) throws Exception {
        for (ObjectInstance objectInstance : objectInstances) {
            out.write("<table border='1'>");
	        out.println("<tr>");
	        out.println("<th>ObjectName</th>");
	        ObjectName objectName = objectInstance.getObjectName();            
	        out.println("<td>" + objectName + "</td>");
	        out.println("</tr>");
	        for (String mbeanAttribute : mbeanAttributes) {
	            out.println("<tr>");
	            out.println("<th>" + mbeanAttribute + "</th>");
	        	out.println("<td>" + mbeanServer.getAttribute(objectName, mbeanAttribute) + "</td>");
	        	out.println("</tr>");
	        	
        	}
	        out.println("</table>");
	        out.println("<br />");
    	}
        
    }
%>
<html>
<head>
<title>Ehcache</title>
</head>
<body>
<h1>Ehcache</h1>
<%
    try {
        java.sql.Timestamp applicationStartupDate = WebApplicationContextUtils.getWebApplicationContext(application) == null
           ? null : new java.sql.Timestamp(WebApplicationContextUtils.getWebApplicationContext(application).getStartupDate());

        out.println("Server=" + InetAddress.getLocalHost() + ", current date: "
         + new java.sql.Timestamp(System.currentTimeMillis()).toString() + ", application startup date="
         + applicationStartupDate + "<br>");
        
        List<MBeanServer> mbeanServers = MBeanServerFactory.findMBeanServer(null);
        for (MBeanServer mbeanServer : mbeanServers) {
            
            out.println("<h2> MbeanServer domain = " + mbeanServer.getDefaultDomain() + "</h2>");
            {
                out.println("<h2>CacheStatistics</h2>");
                Set<ObjectInstance> objectInstances = mbeanServer
                    .queryMBeans(new ObjectName("net.sf.ehcache:type=CacheStatistics,*"), null);
                dumpMbeans(objectInstances, out, mbeanServer, 
                           "AssociatedCacheName",
                           "ObjectCount",
                           "CacheHits",
                           "CacheMisses",
                           "InMemoryHits",
                           "OnDiskHits");
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
