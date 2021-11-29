<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.io.*,java.util.*" %>
  <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
<%@include file="../consultasignovitales/Conecta.jsp" %>
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

String fechacita=request.getParameter("fecha");
 
String temperatura=request.getParameter("temperatura");

String precion=request.getParameter("precionart");

String oxigeno=request.getParameter("oxigeno");

String peso=request.getParameter("peso");

String talla=request.getParameter("talla");

 

String idtemperatura="1";
String idprecion="2";
String idoxigeno="3";
String idpeso="4";
String idtalla="5";





Statement st1=con.createStatement();
String sql1="insert into tconsultasigvitales (idsignovital,idconsulta,dato,fecha,idusuario) values('"+idtemperatura+"','"+id_consulta+"','"+temperatura+"','"+fechacita+"','"+id_paciente+"')";
int flag1=st1.executeUpdate(sql1);

Statement st2=con.createStatement();
String sql2="insert into tconsultasigvitales (idsignovital,idconsulta,dato,fecha,idusuario) values('"+idprecion+"','"+id_consulta+"','"+precion+"','"+fechacita+"','"+id_paciente+"')";
int flag2=st2.executeUpdate(sql2);

Statement st3=con.createStatement();
String sql3="insert into tconsultasigvitales (idsignovital,idconsulta,dato,fecha,idusuario) values('"+idoxigeno+"','"+id_consulta+"','"+oxigeno+"','"+fechacita+"','"+id_paciente+"')";
int flag3=st3.executeUpdate(sql3);

Statement st4=con.createStatement();
String sql4="insert into tconsultasigvitales (idsignovital,idconsulta,dato,fecha,idusuario) values('"+idpeso+"','"+id_consulta+"','"+peso+"','"+fechacita+"','"+id_paciente+"')";
int flag4=st4.executeUpdate(sql4);

Statement st5=con.createStatement();
String sql5="insert into tconsultasigvitales (idsignovital,idconsulta,dato,fecha,idusuario) values('"+idtemperatura+"','"+id_consulta+"','"+temperatura+"','"+fechacita+"','"+id_paciente+"')";
int flag5=st5.executeUpdate(sql5);
%>
<% 
String site = new String("../consultasignovitales/crearsigvi.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %>
</body>
</html>