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

String id_paciente=request.getParameter("id_paciente");
String fechacita=request.getParameter("fechacita");
 
String fechaconsulta=request.getParameter("fechaconsulta");
 
String id_especialidad=request.getParameter("especialidad");
 
String id_medico=request.getParameter("medico");
 
String observacion=request.getParameter("observacion");
 
String estado="5";
String eliminado="1";
 

Statement st=con.createStatement();
String sql="insert into tcitas (idpaciente,fecha,fechaconsulta,idespecialidad,idmedico,observacion,estado,userelimina) values('"+id_paciente+"','"+fechacita+"','"+fechaconsulta+"','"+id_especialidad+"','"+id_medico+"','"+observacion+"','"+estado+"','"+eliminado+"')";
int flag=st.executeUpdate(sql);
%>
<% 
String site = new String("../citas/crearcita.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %>
</body>
</html>