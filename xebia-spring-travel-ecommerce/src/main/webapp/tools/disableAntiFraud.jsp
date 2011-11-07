<%@page import="fr.xebia.ws.travel.antifraud.v1_0.AntiFraudServiceDispatchingImpl"%>
<%@page contentType="text/plain"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%
    WebApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    AntiFraudServiceDispatchingImpl dispatchingImpl = applicationContext.getBean(AntiFraudServiceDispatchingImpl.class);
    dispatchingImpl.setEnableAntiFraudService(false);
%>