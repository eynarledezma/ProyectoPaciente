<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="../citas/cabpacientes.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Configuración Sintomas</h1>
<hr>
<h3 align="center">Datos del Sintoma</h3>
<div id="seccionA">	
	<section class="form-registe"> 
	<form action="GuardarLaboratorio.jsp" method="get">  		
    	<td><tr> Id Laboratorio</tr></td> <br>
    	<input class="controls" type="text" name="idreceta" id="idreceta" placeholder="Id se carga automatico" disabled> <br><br>
    	<tr>Descripción</tr><br>
    	<input class="controls" type="text" name="descripcion" id="descripcion" placeholder="Ingrese Laboratorio"> <br> <br> 	
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