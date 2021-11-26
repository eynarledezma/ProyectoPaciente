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
Statement st3=con.createStatement();


String query="select  idusuario,nombre, apellido, telefono, fecha_nac,edad, sexo "; 
query += "from tusuario where cedula = '"+cedula+"' limit 1";

String query2="select idespecialidad,descripcion "; 
query2 += "from tespecialidades";

String query3="select idusuario,nombre,apellido "; 
query3 += "from tusuario";



ResultSet rs2=st2.executeQuery(query2);



ResultSet rs=st.executeQuery(query);



ResultSet rs3=st3.executeQuery(query3);
	 
%>


<h1 align="center">Crear cita</h1>
<hr>
<h2 align="center">Datos</h2>
<div id="seccionA">
<form action="crearcita.jsp" method="post">
<table border =0>
<tr><td colspan=1 ALIGN="left"> Cedula</td> <td> <INPUT TYPE="text" NAME="cedula"  ></td>  
<div id="boton">
<td colspan=2 ALIGN="left"><input id="boton2" type="submit" value="buscar" /></td></tr>
</form>

<%
String ID_paciente ="";
if (rs.next())
{
	 
	 
	 rs=st.executeQuery(query);
while(rs.next())
{
	ID_paciente =rs.getString(1);
%>
<tr><td colspan=1 ALIGN="left"> Id_paciente</td><td><INPUT TYPE="text" NAME="id_paciente" value ="<%=rs.getString(1)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> Nombre</td><td><INPUT TYPE="text" NAME="nombrepaciente" value ="<%=rs.getString(2)%> <%=rs.getString(3)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> Telefono</td><td><INPUT TYPE="text" NAME="id_paciente" value ="<%=rs.getString(4)%>"></td></tr>
<tr>
<td colspan=1 ALIGN="left"> Fecha</td><td><INPUT TYPE="text" NAME="fechapac" value ="<%=rs.getString(5)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> Edad</td><td><INPUT TYPE="text" NAME="edadpac" value ="<%=rs.getString(6)%>" ></td></tr>
<tr><td colspan=1 ALIGN="left"> Sexo</td><td><INPUT TYPE="text" NAME="sexopac"value ="<%=rs.getString(7)%>"></td></tr>



<form action="recojercrear.jsp" method="get">
<tr><td colspan=1 ALIGN="left"> id_paciente</td><td><INPUT TYPE="text" NAME="id_paciente" value ="<%=rs.getString(1)%>"></td></tr>
<%
}
}
%>
<tr><td colspan=1 ALIGN="left"> Fecha</td><td> <INPUT TYPE="date" NAME="fechacita" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> Fecha consulta</td><td> <input type="date" name="fechaconsulta"> </td> </tr>


<tr><td colspan=1 ALIGN="left"> Especialidad </td> <td> <select name="especialidad">

<%
if (rs2.next())
{
	 rs2=st2.executeQuery(query2);
	 
while(rs2.next())
{

%>

<option value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%> </option>

  
<%

}
}

%>



<tr><td colspan=1 ALIGN="left"> Medico </td> <td> <select name="medico">

<%
if (rs3.next())
{
	 rs3=st3.executeQuery(query3);
	 
while(rs3.next())
{

%>

<option id=valor1 value="<%=rs3.getString(1)%>"><%=rs3.getString(2)%><%=rs3.getString(3)%></option>

  
<%

}
}

%>

<tr><td colspan=1 ALIGN="left"> Observacion </td> <td><INPUT TYPE="text" NAME="observacion" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> temperatura</td><td> <INPUT TYPE="text" NAME="temperatura" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> precion arterial</td><td> <input type="text" name="precionart"> </td> </tr>
<tr><td colspan=1 ALIGN="left"> oxigeno </td> <td> <input type="text" name="oxigeno">
<tr><td colspan=1 ALIGN="left"> peso </td> <td> <input type="text" name="peso">
<tr><td colspan=1 ALIGN="left"> talla </td> <td><INPUT TYPE="text" NAME="talla" ></td> </tr>
</tr>
</table>
</div>
<div id="boton">
<a href="../citas/crearsigvi.jsp?id_usuario=<%=ID_paciente%>">crear signos vitales</a>
<input id="boton1" type="submit" value="guardar cita" />
</div>
<br>
</form>

<footer>
Derechos reservados &copy; 2021 <br>
Grupo 2ls222<br>
Grupo2ls222@utp.ac.pa<br>
www.clinicautp.com <br>

</footer>

</body>
</html>