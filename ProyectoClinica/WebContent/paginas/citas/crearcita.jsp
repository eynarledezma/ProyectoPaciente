<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>crear cita</title>
<link href="../citas/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>

 <div class="bg_color"></div>
 <div class="wave w1"></div>
 <div class="wave w2"></div>
<%String horas=request.getParameter("horas");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/sirepacc","root","");
 
Statement st=con.createStatement();
String query="select descripcion "; 
query += "from tespecialidades";

out.println(query);

ResultSet rs=st.executeQuery(query);

if (rs.next())
{
	 rs=st.executeQuery(query);
	 
	 
	 
%>

<form action="recojercrear.jsp" method="post">
<h1 align="center">crear cita</h1>
<hr>
<h2 align="center">datos del paciente</h2>
<div id="seccionA">
<table border =0>
<tr>
<td colspan=2 ALIGN="center"> cedula <INPUT TYPE="text" NAME="cedulapaciente"" ></td> 
<td colspan=2 ALIGN="center"> nombre del paciente   <INPUT TYPE="text" NAME="nombrepaciente"></td> 
<td colspan=2 ALIGN="center"> id_paciente  <INPUT TYPE="text" NAME="id_paciente"></td>
</tr>
<tr>
<td colspan=2 ALIGN="center"> fecha  <INPUT TYPE="date" NAME="fechapac"></td>
<td colspan=2 ALIGN="center"> edad <INPUT TYPE="text" NAME="edadpac"></td>
<td colspan=2 ALIGN="center"> sexo  <INPUT TYPE="text" NAME="sexopac"></td>
</tr>
</table>
</div>
<hr>
<h2 align="center">datos de la cita</h2>

<div id="seccionB">
<table border =0>
<tr>
<td colspan=2 ALIGN="center"> fecha <INPUT TYPE="date" NAME="fechcita"" ></td> 
<td colspan=2 ALIGN="center"> fecha consulta <input type="date" name="fecha"> </td> 


<td colspan=2 ALIGN="center"> especialidad   <select name="especialidad">

<%
while(rs.next())
{

%>

<option id=valor1 value="value1"><%=rs.getString(1)%> </option>

  
<%

}

%>
<%
}
else
{
	
}
%>


<td colspan=2 ALIGN="center"> medico <select name="especialidad">></td>



<td colspan=2 ALIGN="center"> observacion <INPUT TYPE="text" NAME="observacion"" ></td> 
</tr>
</table>
</div>
<div id="boton">
<input id="boton1" type="submit" value="Boton1" />
</div>
<br>
</form>
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