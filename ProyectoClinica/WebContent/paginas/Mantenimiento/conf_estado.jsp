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
    	<tr> id Especialidad</tr> <br>
    	<input class="controls" type="text" name="idestado" id="idestado" placeholder="Id se carga automatico" disabled> <br><br>
    	<tr>Descripción</tr><br>
    	<input class="controls" type="text" name="descripcion" id="descripcion" placeholder="Ingrese descripcion"> <br> <br> 
    	<tr>Entidad</tr><br>
    	<input class="controls" type="text" name="entidad" id="entidad" placeholder="Ingrese Entidad"> <br> <br> 	
    	<tr>Elimanado</tr><br>
    	<input class="controls" type="text" name="eliminado" id="eliminado" placeholder=""> <br> <br> 	
    	
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