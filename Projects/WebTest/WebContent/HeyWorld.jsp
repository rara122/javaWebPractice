<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b> <%
 	out.print("Hey World!");
 %>
	</b>
	<br />
	<%
		Connection connection = null;
		Statement statement = null;
		ResultSet results = null;
		String url = "jdbc:sqlserver://JYOO-WIN10\\SQLEXPRESS;databaseName=SiemensQuotingStaging3";
		String userName = "Jyoo";
		String password = "Intentionally Left Blank";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(url, userName, password);
			out.println("SUCCESS!!!!!!");
		} catch (SQLException e) {
			out.println(e);
		}
	%>
</body>
</html>
