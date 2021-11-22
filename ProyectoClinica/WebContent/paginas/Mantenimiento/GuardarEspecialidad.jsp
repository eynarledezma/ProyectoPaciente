<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %> 
<%@page import="javax.sql.*" %> 
<%@page import="java.sql.Connection" %>
<%@include file="../citas/Conecta.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 	String id_especialidad=request.getParameter("descripcion"); 
	Statement st=con.createStatement();
	String sql="insert into tespecialidades (descripcion) values ('"+id_especialidad+"')";
	int flag=st.executeUpdate(sql);

	
	out.print("ESPECIALIDAD REGISTRADA"); 
	
	
%> 

 <% 
String site = new String("../Mantenimiento/conf_especialidad.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %> 
</body>
</html>