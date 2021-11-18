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
<meta charset="ISO-8859-1">
<title>crear cita</title>
<link href="../citas/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>

<%String horas=request.getParameter("horas");
String cedula="";
cedula=(request.getParameter("cedula") != null) ? request.getParameter("cedula") : "";
 
Statement st=con.createStatement();
Statement st2=con.createStatement();
String query="select  nombre, apellido, telefono, fecha_nac,edad, sexo "; 
query += "from tusuario where cedula = '"+cedula+"' limit 1";

String query2="select descripcion "; 
query2 += "from tespecialidades";

out.println(query2);

ResultSet rs2=st2.executeQuery(query2);

out.println(query);

ResultSet rs=st.executeQuery(query);

	 
%>


<h1 align="center">crear cita</h1>
<hr>
<h2 align="center">datos</h2>
<div id="seccionA">
<form action="crearcita.jsp" method="post">
<table border =0>
<tr><td colspan=1 ALIGN="left"> Cedula</td> <td> <INPUT TYPE="text" NAME="cedula"  ></td>  
<div id="boton">
<td colspan=2 ALIGN="left"><input id="boton2" type="submit" value="buscar" /></td></tr>


<%
if (rs.next())
{
	 
	 
	 rs=st.executeQuery(query);
while(rs.next())
{

%>

<tr><td colspan=1 ALIGN="left"> nombre</td><td><INPUT TYPE="text" NAME="nombrepaciente" value ="<%=rs.getString(1)%> <%=rs.getString(2)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> telefono</td><td><INPUT TYPE="text" NAME="id_paciente" value ="<%=rs.getString(3)%>"></td></tr>
<tr>
<td colspan=1 ALIGN="left"> fecha</td><td><INPUT TYPE="date" NAME="fechapac" value ="<%=rs.getString(4)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> edad</td><td><INPUT TYPE="text" NAME="edadpac" value ="<%=rs.getString(5)%>" ></td></tr>
<tr><td colspan=1 ALIGN="left"> sexo</td><td><INPUT TYPE="text" NAME="sexopac"value ="<%=rs.getString(6)%>"></td></tr>

<%
}
}
%>


<tr><td colspan=1 ALIGN="left"> fecha</td><td> <INPUT TYPE="date" NAME="fechcita"" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> fecha consulta</td><td> <input type="date" name="fecha"> </td> </tr>


<tr><td colspan=1 ALIGN="left"> especialidad </td> <td> <select name="especialidad">

<%
if (rs2.next())
{
	 rs2=st2.executeQuery(query2);
	 
while(rs2.next())
{

%>

<option id=valor1 value="value1"><%=rs2.getString(1)%> </option>

  
<%

}
}

%>



<tr><td colspan=1 ALIGN="left"> medico </td> <td> <select name="especialidad">></td></tr>



<tr><td colspan=1 ALIGN="left"> observacion </td> <td><INPUT TYPE="text" NAME="observacion" ></td> </tr>
</tr>
</table>
</div>
<div id="boton">
<input id="boton1" type="submit" value="guardar cita" />
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