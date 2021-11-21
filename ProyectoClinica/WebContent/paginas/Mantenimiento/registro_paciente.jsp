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

<!-- <link href="../MenuPrincipal/steel/conf_style.css" rel="stylesheet" type="text/css"/> -->
 <link href="../citas/cabpacientes.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>Sistema Pacientes</title>
</head>
<body>

<h1 align="center">Configuración Estado</h1>
<hr>
<h3 align="center">Datos del Estado</h3>
<div id="seccionA">	
	<section class="form-registe"> 
	<form action="GuardarEstado.jsp" method="get">  		
    	<tr> id Paciente</tr> <br>
    	<input class="controls" type="text" name="idpaciente" id="idpaciente" placeholder="Id se carga automatico" disabled> <br><br>
    	<tr>cedula</tr><br>
    	<input class="controls" type="text" name="cedula" id="cedula" placeholder="Ingrese cedula"> <br> <br> 
    	<tr>Nombre</tr><br>
    	<input class="controls" type="text" name="nombre" id="nombre" placeholder="Ingrese nombre"> <br> <br> 	
    	<tr>apellido</tr><br>
    	<input class="controls" type="text" name="apellido" id="apellido" placeholder="ingrese apellido"> <br> <br> 	
    	
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