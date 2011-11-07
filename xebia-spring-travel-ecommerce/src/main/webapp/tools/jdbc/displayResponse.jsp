<%@ page import="java.io.*,java.sql.*,java.util.*"%>
<%
try {
   String driverClass = request.getParameter("driverClass");
   String jdbcUrl = request.getParameter("jdbcUrl");
   String username = request.getParameter("username");
   String password = request.getParameter("password");

   if(jdbcUrl== null || jdbcUrl.trim().length() == 0){
      out.write("Fill parameters");
   } else {
      %>Connect ...
<br>
<%
      out.flush();

      Class.forName(driverClass);

      // gets driver info:
      Connection conn = DriverManager.getConnection(jdbcUrl, username, password);
      DatabaseMetaData meta = conn.getMetaData();
      %>
<h1>Connection Meta Data</h1>
<table border="1">
   <tr>
      <td>databaseProductName</td>
      <td><%= meta.getDatabaseProductName() %></td>
   </tr>
   <tr>
      <td>databaseProductVersion</td>
      <td><%= meta.getDatabaseProductVersion() %></td>
   </tr>
   <tr>
      <td>JdbcDriverName</td>
      <td><%= meta.getDriverName() %></td>
   </tr>
   <tr>
      <td>JdbcDriverVersion</td>
      <td><%= meta.getDriverVersion() %></td>
   </tr>
   <tr>
      <td>JdbcUrl</td>
      <td><%= meta.getURL() %></td>
   </tr>
   <tr>
      <td>DefaultTransactionIsolation</td>
      <td><%= meta.getDefaultTransactionIsolation() %></td>
   </tr>
   <tr>
      <td>MaxConnections</td>
      <td><%= meta.getMaxConnections() %></td>
   </tr>
   <tr>
      <td>ResultSetHoldability</td>
      <td><%= meta.getResultSetHoldability() %></td>
   </tr>
</table>
<h1>Connection Attributes</h1>
<table border="1">
   <tr>
      <td>Catalog</td>
      <td><%= conn.getCatalog() %></td>
   </tr>
   <tr>
      <td>AutoCommit</td>
      <td><%= conn.getAutoCommit() %></td>
   </tr>
   <tr>
      <td>Holdability</td>
      <td><%= conn.getHoldability() %></td>
   </tr>
   <tr>
      <td>TransactionIsolation</td>
      <td><%= conn.getTransactionIsolation() %></td>
   </tr>
</table>
<%
      conn.close();

      for(int i = 0; i < 5; i++){
         Connection cnn = DriverManager.getConnection(jdbcUrl, username, password);
         Statement stmt = cnn.createStatement();
         String sql;
         sql = "select 1 from dual";
         out.write(sql + " : ");
         ResultSet rst = stmt.executeQuery(sql);
         while (rst.next()) {
            out.write(rst.getString(1) + "<br>");
         }
         rst.close();
         stmt.close();
         cnn.close();
      }
   }
// As servlet engine may not display the full stack trace, catch Exception and do it
} catch(Exception e){
    out.println("<pre>");
   PrintWriter printWriter = new PrintWriter(out);
   e.printStackTrace(printWriter);
   out.println();
   out.println("</pre>");
   printWriter.close();
}
%>