<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
<%@include file="../consultadiagnostico/Conecta.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String id_consulta=request.getParameter("id_consulta");
String sintoma=request.getParameter("sintomas");
String observacion=request.getParameter("observacion");
String eliminar = "6";

%>
<% 
Statement st=con.createStatement();
 
String sql="update tconsultasintomas set idsintomas='"+sintoma+"',observacion='"+observacion+"' where idconsultasintomas ='"+id_consulta +"'" ;
out.println(sql); 
int flag=st.executeUpdate(sql);
 
if(flag==1)
 
{
 
out.println("Modificado!");
response.sendRedirect("modificar.jsp");
}
 
else
 
{
 
out.println("Failed");
 
}

 
%>
</body>
</html>