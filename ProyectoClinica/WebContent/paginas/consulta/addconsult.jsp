<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.io.*,java.util.*" %>
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
String id_paciente=request.getParameter("id_paciente");
String fecha=request.getParameter("fecha");
 
String id_especialidad=request.getParameter("id_especialidad");
 

 
String id_medico=request.getParameter("id_medico");
 
String observacion=request.getParameter("observacion");
 

 

Statement st=con.createStatement();
String sql="insert into tconsulta (idcita,idpaciente,fecha,idespecialidad,idmedico,observacion) values('"+id_cita+"','"+id_paciente+"','"+fecha+"','"+id_especialidad+"','"+id_medico+"','"+observacion+"')";
int flag=st.executeUpdate(sql);
%>
<% 
String site = new String("../consulta/crearconsulta.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %>
</body>
</html>