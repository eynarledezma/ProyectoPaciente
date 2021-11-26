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

String temperatura=request.getParameter("temperatura");

String precion=request.getParameter("precionart");

String oxigeno=request.getParameter("oxigeno");

String peso=request.getParameter("peso");

String talla=request.getParameter("talla");

 
String estado="5";
String eliminado="1";
String idtemperatura="1";
String idprecion="2";
String idoxigeno="3";
String idpeso="4";
String idtalla="5";
String null1="null";


Statement st=con.createStatement();
String sql="insert into tcitas (idpaciente,fecha,fechaconsulta,idespecialidad,idmedico,observacion,estado,userelimina) values('"+id_paciente+"','"+fechacita+"','"+fechaconsulta+"','"+id_especialidad+"','"+id_medico+"','"+observacion+"','"+estado+"','"+eliminado+"')";
int flag=st.executeUpdate(sql);

Statement st1=con.createStatement();
String sql1="insert into tconsultasigvitales (idsignovital,dato,fecha,idusuario) values('"+idtemperatura+"','"+temperatura+"','"+fechacita+"','"+id_paciente+"')";
int flag1=st1.executeUpdate(sql1);

Statement st2=con.createStatement();
String sql2="insert into tconsultasigvitales (idsignovital,dato,fecha,idusuario) values('"+idprecion+"','"+precion+"','"+fechacita+"','"+id_paciente+"')";
int flag2=st2.executeUpdate(sql2);

Statement st3=con.createStatement();
String sql3="insert into tconsultasigvitales (idsignovital,dato,fecha,idusuario) values('"+idoxigeno+"','"+oxigeno+"','"+fechacita+"','"+id_paciente+"')";
int flag3=st3.executeUpdate(sql3);

Statement st4=con.createStatement();
String sql4="insert into tconsultasigvitales (idsignovital,dato,fecha,idusuario) values('"+idpeso+"','"+peso+"','"+fechacita+"','"+id_paciente+"')";
int flag4=st4.executeUpdate(sql4);

Statement st5=con.createStatement();
String sql5="insert into tconsultasigvitales (idsignovital,dato,fecha,idusuario) values('"+idtemperatura+"','"+temperatura+"','"+fechacita+"','"+id_paciente+"')";
int flag5=st5.executeUpdate(sql5);
%>
<% 
String site = new String("../citas/crearcita.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %>
</body>
</html>