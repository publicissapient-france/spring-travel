<form name="urlChooser" action="displayResponse.jsp" target="displayResponse">
	<table>
		<tr><td>username</td><td><input type="text" name="username" size="30"></td></tr>
		<tr><td>password</td><td><input type="text" name="password" size="30"></td></tr>
		<tr><td>jdbc url</td><td><input type="text" name="jdbcUrl" value="jdbc:oracle:thin:@<server>:1521:<database_name>" size="30"></td></tr>
		<tr><td>driver class</td><td><input type="text" name="driverClass" value="oracle.jdbc.driver.OracleDriver" size="30"></td></tr>
	</table>
	<input type="submit" value="test">
</form>
