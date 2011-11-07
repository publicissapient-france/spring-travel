<%@page import="java.io.PrintWriter"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Enumeration"%>
<%@page import="org.springframework.aop.framework.Advised"%>
<%@page import="org.springframework.aop.support.AopUtils"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<html>
<head>
<title>Spring Framework Beans</title>
</head>
<body>
<h1>Spring Framework Beans</h1>
<%
    try {
        Enumeration<String> servletContextAttributeNames = application.getAttributeNames();
        
        while (servletContextAttributeNames.hasMoreElements()) {
            String servletContextAttributeName = servletContextAttributeNames.nextElement();
            Object servletContextAttribute = application.getAttribute(servletContextAttributeName);
            if (servletContextAttribute instanceof ApplicationContext) {
                
                ApplicationContext applicationContext = (ApplicationContext)servletContextAttribute;
                
                out.println("<h1>" + applicationContext.getDisplayName() + "</h1>");
                
                out.println("<p>ServletContext.attribute : " + servletContextAttributeName + "</p>");
                out.println("<p>ApplicationContext : " + applicationContext + "</p>");
                
                String[] beanNames = applicationContext.getBeanDefinitionNames();
                Arrays.sort(beanNames);
                
                out.println("<table border='1'>");
                out.println("<tr><th>Name</th>" + "<th>isAopProxy<br/>isCglibProxy<br/>isJdkDynamicProxy</th>"
                            + "<th>Class<br/>Actual class (in case of proxyfication)</th>" + "<th>Bean</th></tr>");
                for (String beanName : beanNames) {
                    out.println("<tr><td>");
                    out.print(beanName);
                    
                    try {
                        Object bean = applicationContext.getBean(beanName);
                        
                        out.print("</td><td>");
                        out.print(AopUtils.isAopProxy(bean) + "<br/>");
                        out.print(AopUtils.isCglibProxy(bean) + "<br/>");
                        out.print(AopUtils.isJdkDynamicProxy(bean) + "<br/>");
                        
                        out.print("</td><td>");
                        if (bean instanceof Advised) {
                            Advised advised = (Advised)bean;
                            Object target = advised.getTargetSource().getTarget();
                            out.print(bean.getClass() + "<br/>");
                            out.print(target.getClass());
                        } else {
                            out.print(bean.getClass());
                        }
                        
                        out.print("</td><td>");
                        out.print(bean);
                        
                    } catch (Exception e) {
                        out.print("</td><td colspan='3'>");
                        out.print(e);
                    }
                    out.println("</td></tr>");
                }
                out.println("</table>");
                out.println("Total : " + beanNames.length + "<br/>");
                
            }
        }
    } catch (Exception e) {
        PrintWriter printWriter = new PrintWriter(out);
        e.printStackTrace(printWriter);
        out.println();
        printWriter.flush();
    }
%>
</body>
</html>