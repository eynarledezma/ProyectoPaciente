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
<title>crear cita</title>
<link href="../consultadiagnostico/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>

<%
String id_consulta="";
id_consulta=(request.getParameter("id_consulta") != null) ? request.getParameter("id_consulta") : "";
String id_paciente="";
id_paciente=(request.getParameter("id_paciente") != null) ? request.getParameter("id_paciente") : "";
 

Statement st2=con.createStatement();





String query2="select idsintomas,descripcion "; 
query2 += "from tsintomas";





ResultSet rs2=st2.executeQuery(query2);




	 
%>


<h1 align="center">Crear sintoma</h1>
<hr>
<h2 align="center">Datos</h2>
<div id="seccionA">






<form action="crear.jsp" method="get">
<table>
<tr><td colspan=1 ALIGN="left"> id consulta </td> <td> <input value="<%=id_consulta%>"type="text" name="id_consulta">
<tr><td colspan=1 ALIGN="left"> id paciente </td> <td> <input value="<%=id_paciente%>"type="text" name="id_paciente">
<tr><td colspan=1 ALIGN="left"> fecha </td> <td> <input type="date" name="fecha">

<tr><td colspan=1 ALIGN="left"> observacion </td> <td> <input type="text" name="observacion">

<tr><td colspan=1 ALIGN="left"> sintoma </td> <td> <select name="sintoma">

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
<input id="boton1" type="submit" value="guardar giagnostico" />
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