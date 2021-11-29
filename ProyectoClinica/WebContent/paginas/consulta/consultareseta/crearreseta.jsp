<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>


<!DOCTYPE html>
<% session.setAttribute("accion","insertar");
    session.setAttribute("mod1","9");
    
    %>
<%@include file="../validasession.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>crear cita</title>
<link href="../consultadiagnostico/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>

<%
String id_consulta="";
id_consulta=(request.getParameter("id_consulta") != null) ? request.getParameter("id_consulta") : "0";
String id_paciente="";
id_paciente=(request.getParameter("id_paciente") != null) ? request.getParameter("id_paciente") : "";
 

Statement st2=con.createStatement();





String query2="select idreceta,descripcion "; 
query2 += "from treceta";





ResultSet rs2=st2.executeQuery(query2);




	 
%>


<h1 align="center">Crear receta</h1>
<hr>
<h2 align="center">Datos</h2>
<div id="seccionA">






<form action="crear.jsp" method="get">
<table>
<tr><td colspan=1 ALIGN="left"> id consulta </td> <td> <input value="<%=id_consulta%>"type="text" name="id_consulta">
<tr><td colspan=1 ALIGN="left"> id paciente </td> <td> <input value="<%=id_paciente%>"type="text" name="id_paciente">
<tr><td colspan=1 ALIGN="left"> fecha </td> <td> <input type="date" name="fecha">

<tr><td colspan=1 ALIGN="left"> observacion </td> <td> <input type="text" name="observacion">

<tr><td colspan=1 ALIGN="left"> receta </td> <td> <select name="receta">

<%
if (rs2.next())
{
	 rs2=st2.executeQuery(query2);
	 
while(rs2.next())
{

%>

<option value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%> </option><br>

  
<%

}
}

%>
</tr>
</table>
</div>
<div id="boton">
<input id="boton1" type="submit" value="guardar receta" />
</div>
<br>
</form>

<footer>
Derechos reservados &copy; 2021 <br>
Grupo 2ls222<br>
Grupo2ls222@utp.ac.pa<br>
www.clinicautp.com <br>

</footer>

</body>
</html>