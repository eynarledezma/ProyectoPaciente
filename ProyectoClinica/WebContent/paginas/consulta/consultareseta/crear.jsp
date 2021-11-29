<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.io.*,java.util.*" %>
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

String id_paciente=request.getParameter("id_paciente");

String fecha=request.getParameter("fecha");
 
String observacion=request.getParameter("observacion");

String idreceta=request.getParameter("receta");


 


Statement st=con.createStatement();
String sql="insert into `tconsultareceta` (`idconsulta`, `idreceta`, `otrosdatos`, `fecha`, `idusuario`) values('"+id_consulta+"','"+idreceta+"','"+observacion+"','"+fecha+"','"+id_paciente+"')";
int flag=st.executeUpdate(sql);


%>
<% 
String site = new String("../consultareseta/crearreseta.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %>
</body>
</html>