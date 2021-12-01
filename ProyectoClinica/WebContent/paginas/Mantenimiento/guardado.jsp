<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %> 
 
<%@page import="javax.sql.*" %> 
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
 <link href="../citas/cabpacientes.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>MAS PRIVILEGIOS</title>
</head>
<h1 align="center">PRIVILEGIOS</h1>
<body>

<h2 align="center">¿DESEA DAR MAS PRIVILIGEOS AL USUARIO?</h2>
<!-- <td width="20%"><tr>desea agregarle otros privilegios este usuario</tr></td><br> -->
<%

%>
<!-- <a align="center" href="../Mantenimiento/privilegios.jsp"privilegios.jsp" class="button">si</a>      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a align="center" href="../Mantenimiento/conf_usuario.jsp" class="button">no</a>  -->
<a href="../Mantenimiento/privilegios.jsp" align="center" >
    <button>si</button>
  </a> 
<a href="../Mantenimiento/conf_usuario.jsp" align="center" >
    <button>no</button>
  </a> 
</body>
</html>