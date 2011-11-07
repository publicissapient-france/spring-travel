<%@ page import="java.lang.management.ManagementFactory"%>
<%@ page import="javax.management.*"%>
<%@ page import="java.io.*,java.util.*"%>
<%@page import="java.net.InetAddress"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.util.StringUtils"%>
<%!public void dumpMbeans(Collection<ObjectInstance> objectInstances, JspWriter out, MBeanServer mbeanServer, String... mbeanAttributes)
            throws Exception {
        out.write("<table border='1'>");

        out.write("<tr>");
        out.print("<th>ObjectName</th>");
        for (String mbeanAttribute : mbeanAttributes) {
            out.print("<th>" + mbeanAttribute + "</th>");
        }
        out.println("</tr>");

        for (ObjectInstance objectInstance : objectInstances) {
            ObjectName objectName = objectInstance.getObjectName();
            String objectNameString = objectName.getKeyProperty("service");
            if (StringUtils.hasLength(objectName.getKeyProperty("operation"))) {
                objectNameString += "<br />" + objectName.getKeyProperty("operation");
            }
            out.print("<tr><td nowrap>" + objectNameString + "</td>");
            for (String mbeanAttribute : mbeanAttributes) {
                out.print("<td>" + mbeanServer.getAttribute(objectName, mbeanAttribute) + "</td>");
            }
            out.println("</tr>");
        }

        out.println("</table>");

    }%>


<html>
<head>
<title>CXF Response time</title>
</head>
<body>
<h1>CXF Response time</h1>
<%
    try {
        java.sql.Timestamp applicationStartupDate = WebApplicationContextUtils.getWebApplicationContext(application) == null ? null
                : new java.sql.Timestamp(WebApplicationContextUtils.getWebApplicationContext(application).getStartupDate());

        out.println("Server=" + InetAddress.getLocalHost() + ", current date: "
                + new java.sql.Timestamp(System.currentTimeMillis()).toString() + ", application startup date="
                + applicationStartupDate + "<br>");

        List<MBeanServer> mbeanServers = MBeanServerFactory.findMBeanServer(null);
        for (MBeanServer mbeanServer : mbeanServers) {
            {
                out.println("<h2>CXF Server Endpoints</h2>");
                Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName(
                        "org.apache.cxf:type=Performance.Counter.Server,*"), null);

                List<ObjectInstance> objectInstancesList = new ArrayList<ObjectInstance>(objectInstances);
                Collections.sort(objectInstancesList, new Comparator<ObjectInstance>() {
                    public int compare(ObjectInstance objectInstance1, ObjectInstance objectInstance2) {
                        int serviceComparaison = objectInstance1.getObjectName().getKeyProperty("service").compareTo(
                                objectInstance2.getObjectName().getKeyProperty("service"));
                        if (serviceComparaison == 0) {
                            String operation1 = objectInstance1.getObjectName().getKeyProperty("operation");
                            String operation2 = objectInstance2.getObjectName().getKeyProperty("operation");
                            if (operation1 == null) {
                                return -1;
                            }
                            if (operation2 == null) {
                                return 1;
                            }
                            return operation1.compareTo(operation2);
                        }

                        return serviceComparaison;
                    }
                });

                dumpMbeans(objectInstancesList, out, mbeanServer, "NumInvocations", "NumCheckedApplicationFaults",
                        "NumLogicalRuntimeFaults", "NumRuntimeFaults", "NumUnCheckedApplicationFaults", "TotalHandlingTime");

            }

            {
                out.println("<h2>CXF Clients</h2>");
                Set<ObjectInstance> objectInstances = mbeanServer.queryMBeans(new ObjectName(
                        "org.apache.cxf:type=Performance.Counter.Client,*"), null);
                List<ObjectInstance> objectInstancesList = new ArrayList<ObjectInstance>(objectInstances);
                Collections.sort(objectInstancesList, new Comparator<ObjectInstance>() {
                    public int compare(ObjectInstance objectInstance1, ObjectInstance objectInstance2) {
                        int serviceComparaison = objectInstance1.getObjectName().getKeyProperty("service").compareTo(
                                objectInstance2.getObjectName().getKeyProperty("service"));
                        if (serviceComparaison == 0) {
                            String operation1 = objectInstance1.getObjectName().getKeyProperty("operation");
                            String operation2 = objectInstance2.getObjectName().getKeyProperty("operation");
                            if (operation1 == null) {
                                return -1;
                            }
                            if (operation2 == null) {
                                return 1;
                            }
                            return operation1.compareTo(operation2);
                        }

                        return serviceComparaison;
                    }
                });
                dumpMbeans(objectInstancesList, out, mbeanServer, "NumInvocations", "NumCheckedApplicationFaults",
                        "NumLogicalRuntimeFaults", "NumRuntimeFaults", "NumUnCheckedApplicationFaults", "TotalHandlingTime");
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