<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../MenuPrincipal/steel/pie&cabeza.css" rel="Stylesheet" type= "text/css">
<div>
<h1>Captura de Usuarios</h1>
<hr>
</div>
</head>
<body>

<div align="center" class="Form">
 <form action="insertUsuario.jsp" method="get"    align="center"" >

<table>

<tr>

<td>id: </td> 

<td><input type="text" name="idempleado" id="idempleado"> </td>

<td>direccion</td>
<td><input type="text" name="direccion" id="direccion"> </td>


</tr>

<tr>

<td>cedula</td>

<td><input type="text" name="cedula" id="cedula"></td>
<td>telefono</td>
<td><input type="text" name="telefono" id="telefono"> </td>

<tr>
<td>Nombre</td>
<td><input type="text" name="nombre" id="nombre"></td>
<td></td><td></td>
<td>email</td>
<td><input type="text" name="email" id="email"> </td>

<tr>
<td>apellido</td>
<td><input type="text" name="apellido" id="apellido"></td>
<td>Password</td>
<td><input type="text" name="password" id="password"> </td>
</tr>
</tr>
<tr>

<td colspan=4 align="center"><input type="submit" value="Guardar" ></td>
</tr>
<br><br>

</table>
</Form>
</div>

<p>
Este apartado es para la captura de datos de los respectivos usuarios de nuestra clinica .<br><br><br><br><br><br><br><br><br><br><br><br>
</p>



</body>
<div>
<footer>
Derechos reservados &copy; 2021 <br>
Grupo 2ls222<br>
Grupo2ls222@utp.ac.pa<br>
www.clinicautp.com <br>

</footer>
</div>
</html>
