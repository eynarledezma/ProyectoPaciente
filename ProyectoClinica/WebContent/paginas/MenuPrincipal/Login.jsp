<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>clinica UTP</title>
<link href="../MenuPrincipal/steel/SteelLogin.css" rel="Stylesheet" type= "text/css">
<link rel="sty">
</head>
<body>
<div id="seccionL">
<form action="sesion.jsp"  method="GET">
<p id="title">LOGIN</p> 
<hr>
<br><br>
<label id="usuario" >NOMBRE DE USUARIO  </label>
<br><br>

<input type="text"   class='entrada' name="username" />
<br><br>
<label id="contraseña">CONTRASEÑA</label>
<br><br>
<input type="password" class='entrada'  name="password"/>
<br><br>
<input type="submit" value= "Iniciar sesión" id="boton">
</form>
</div>
</body>
</html>