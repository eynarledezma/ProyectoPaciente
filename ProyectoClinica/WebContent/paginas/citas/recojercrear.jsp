<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.io.*,java.util.*" %>
  <%@page import="java.sql.*" %>
 
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
 
String cedula=request.getParameter("cedulapaciente");
 
String nombre=request.getParameter("nombrepaciente");
 
String id_paciente=request.getParameter("id_paciente");
 
String fecha_pac=request.getParameter("fechapac");
 
String edad=request.getParameter("edadpac");
 
String sexo=request.getParameter("sexopac");
 

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/sirepacc","root","");
 
Statement st=con.createStatement();
String sql="insert into pacientes (nombre,cedula,edad,sexo,fecha) values('"+nombre+"','"+cedula+"','"+edad+"','"+sexo+"','"+fecha_pac+"')";
int flag=st.executeUpdate(sql);
%>
<% 
String site = new String("crearcita.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %>
</body>
</html>