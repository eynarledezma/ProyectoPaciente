<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/sirepacc","root","");
%>
</body>
</html>