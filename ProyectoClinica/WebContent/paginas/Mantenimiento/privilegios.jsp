<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %> 
 
<%@page import="javax.sql.*" %> 
<%@page import="java.sql.Connection" %>
<%-- <%@include file="../citas/Conecta.jsp" %> --%>

<!DOCTYPE html>

<html>
<head>

<!-- <link href="../MenuPrincipal/steel/conf_style.css" rel="stylesheet" type="text/css"/> -->
 <link href="../citas/cabpacientes.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>Sistema Pacientes</title>
</head>
<body>
<%
String idusuario=(String)session.getAttribute("id");
%>
<h1 align="center">privilegios</h1>
<hr>
<h3 align="center">introduzca privilegios</h3>
<div id="seccionA">	
	<section class="form-registe"> 
	<form action="GuardarPrivilegio.jsp" method="get">  		
 
    	<td width="20%"><tr>modulo</tr></td><br>
    	
    	<input type="radio" name="modulo" id="modulo" value="1">mantenimiento<br>
    	<input type="radio" name="modulo" id="modulo" value="2">citas<br>
    	<input type="radio" name="modulo" id="modulo" value="3">consulta<br>
    	</p>   	
    	 	<td width="20%"><tr>privilegio</tr></td><br>
    	<input type="radio" name="privilegio1" id="privilegio1" value="si">imprimir<br>
    	<input type="radio" name="privilegio2" id="privilegio2" value="si">lectura<br>
    	<input type="radio" name="privilegio3" id="privilegio3" value="si">modificar<br>
    	<input type="radio" name="privilegio4" id="privilegio4" value="si">insertar<br>
    	<input type="radio" name="privilegio5" id="privilegio5" value="si">abrir<br>
    	<input type="radio" name="privilegio6" id="privilegio6" value="si">eliminar<br>
    	</p>   	
    	
    	<input class="botons" type="submit" value="Registrar">  
    	
    </form>
   
	</section><br><br><br><br><br><br>
	

</div>
<div>
<footer>
Derechos reservados &copy; 2021 <br>
Grupo 2ls222<br>
Grupo2ls222@utp.ac.pa<br>
www.clinicautp.com <br>
</footer>
</div>
</body>
</html>