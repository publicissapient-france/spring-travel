<%@page contentType="text/plain" %>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.springframework.jdbc.support.JdbcUtils"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%
    WebApplicationContext applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(application);
    DataSource dataSource = applicationContext.getBean(DataSource.class);
    Connection cnn = dataSource.getConnection();
    Statement stmt = null;
    try {
        stmt = cnn.createStatement();
        int deletedRows = stmt.executeUpdate("delete from booking");
        cnn.commit();
        out.print(deletedRows);
    } catch(Exception e){
        PrintWriter printWriter = new PrintWriter(out);
        e.printStackTrace(printWriter);
        printWriter.close();
    } finally {
        JdbcUtils.closeStatement(stmt);
        JdbcUtils.closeConnection(cnn);
     }
%>