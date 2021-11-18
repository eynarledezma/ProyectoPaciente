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
String id_cita=request.getParameter("id_cita");
String fechacita=request.getParameter("fechacita");
 
String fechaconsulta=request.getParameter("fechaconsulta");
 
String id_especialidad=request.getParameter("especialidad");
 
String id_medico=request.getParameter("medico");
 
String observacion=request.getParameter("observacion");

%>
<% 
Statement st=con.createStatement();
 
String sql="update tcitas set  fecha='"+fechacita+"',fechaconsulta='"+fechaconsulta+"',idespecialidad='"+id_especialidad+"',idmedico='"+id_medico+"',observacion='"+observacion+"' where idcita='"+id_cita+"'" ;
out.println(sql); 
int flag=st.executeUpdate(sql);
 
if(flag==1)
 
{
 
out.println("Modificado!");
 
}
 
else
 
{
 
out.println("Failed");
 
}
 response.sendRedirect("modificar.jsp");
 
%>
</body>
</html>