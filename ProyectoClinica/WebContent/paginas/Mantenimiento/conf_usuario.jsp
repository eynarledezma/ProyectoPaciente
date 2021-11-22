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

<h1 align="center">Configuración Usuario</h1>
<hr>
<h3 align="center">Datos del Usuario</h3>
<div id="seccionA">	
	<section class="form-registe"> 
	<form action="GuardarUsuario.jsp" method="get">  		
    	<tr> id Usuario</tr> <br>
    	<input class="controls" type="text" name="idusuario" id="idusuario" placeholder="Id se carga automatico" disabled> <br><br>
    	<tr>Cedula</tr><br>
    	<input class="controls" type="text" name="cedula" id="cedula" placeholder="Ingrese cedula"> <br> <br> 
    	<tr>Nombre</tr><br>
    	<input class="controls" type="text" name="nombre" id="nombre" placeholder="Ingrese nombre"> <br> <br> 	
    	<tr>Apellido</tr><br>
    	<input class="controls" type="text" name="apellido" id="apellido" placeholder="Ingrese apellido"> <br> <br> 	
    	<tr>Direccion</tr><br>
    	<input class="controls" type="text" name="direccion" id="direccion" placeholder="Ingrese direccion"> <br> <br> 	
    	<tr>Telefono</tr><br>
    	<input class="controls" type="text" name="telefono" id="telefono" placeholder="Ingrese telefono"> <br> <br> 
    	<tr>Email</tr><br>
    	<input class="controls" type="text" name="email" id="email" placeholder="Ingrese email"> <br> <br> 
    	<tr>Password</tr><br>
    	<input class="controls" type="text" name="password" id="password" placeholder="Ingrese password"> <br> <br> 	
    	<tr>Celular</tr><br>
    	<input class="controls" type="text" name="celular" id="celular" placeholder="Ingrese celular"> <br> <br> 	
    	<tr>Estado</tr><br>
    	<input class="controls" type="text" name="estado" id="estado" placeholder="Ingrese estado"> <br> <br> 	
    	<tr>Username</tr><br>
    	<input class="controls" type="text" name="username" id="username" placeholder="Ingrese username"> <br> <br>
    	<p>
    	<tr>Sexo</tr><br>
    	mujer<input class="controls" type="radio" name="sexo" id="sexo" value="0"> <br> <br> 
    	hombre<input class="controls" type="radio" name="sexo" id="sexo" value="1"> 
    	</p>
    	<tr>Fecha de nacimiento</tr><br>
    	<tr><td colspan=1 ALIGN="left">Fecha de nacimiento</td><td> <input type="date" name="fechanacimiento"> </td> </tr>
    		
    	<tr>Edad</tr><br>
    	<input class="controls" type="text" name="edad" id="edad" placeholder="Ingrese edad"> <br> <br>	
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