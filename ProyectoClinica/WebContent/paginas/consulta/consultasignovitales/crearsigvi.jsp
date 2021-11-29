<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
<%@include file="../consultasignovitales/Conecta.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>crear cita</title>
<link href="../consultasignovitales/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>

<%
String id_consulta="";
id_consulta=(request.getParameter("id_consulta") != null) ? request.getParameter("id_consulta") : "";
String id_paciente="";
id_paciente=(request.getParameter("id_paciente") != null) ? request.getParameter("id_paciente") : "";
 

	 
%>


<h1 align="center">Crear signos vitales</h1>
<hr>
<h2 align="center">Datos</h2>
<div id="seccionA">

<table border =0>

<form action="recojercrear.jsp" method="get">
<tr><td colspan=1 ALIGN="left"> id_paciente</td><td><INPUT TYPE="text" NAME="id_paciente" value ="<%=id_paciente%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> id_consulta</td><td><INPUT TYPE="text" NAME="id_consulta" value ="<%=id_consulta%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> fecha</td><td> <INPUT TYPE="date" NAME="fecha" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> temperatura</td><td> <INPUT TYPE="text" NAME="temperatura" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> precion arterial</td><td> <input type="text" name="precionart"> </td> </tr>
<tr><td colspan=1 ALIGN="left"> oxigeno </td> <td> <input type="text" name="oxigeno">
<tr><td colspan=1 ALIGN="left"> peso </td> <td> <input type="text" name="peso">
<tr><td colspan=1 ALIGN="left"> talla </td> <td><INPUT TYPE="text" NAME="talla" ></td> </tr>
</tr>
</table>
</div>
<div id="boton">
<input id="boton1" type="submit" value="guardar" />
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