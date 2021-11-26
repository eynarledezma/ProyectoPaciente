<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>
<%@include file="../citas/Conecta.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../consulta/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>
<% 
String id_consulta="";
id_consulta=(request.getParameter("id_consulta") != null) ? request.getParameter("id_consulta") : "";
String id_paciente="";
id_paciente=(request.getParameter("id_paciente") != null) ? request.getParameter("id_paciente") : "";
String id_especialidad="";
id_especialidad=(request.getParameter("id_especialidad") != null) ? request.getParameter("id_especialidad") : "";
String id_medico="";
id_medico=(request.getParameter("id_medico") != null) ? request.getParameter("id_medico") : "";

String query="select idconsulta,idcita, idpaciente,fecha,idmedico,observacion "; 
query += "from tconsulta where idconsulta = '"+id_consulta+"' limit 1";

String query2="select cedula,nombre,apellido "; 
query2 += "from tusuario where idusuario = '"+id_paciente+"' limit 1";

String query6="select nombre,apellido "; 
query6 += "from tusuario where idusuario = '"+id_medico+"' limit 1";

Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st6=con.createStatement();


ResultSet rs=st.executeQuery(query);
ResultSet rs2=st2.executeQuery(query2);
ResultSet rs6=st6.executeQuery(query6);
%>
<%
if (rs2.next())
{
	 
	 
	 rs2=st2.executeQuery(query2);
while(rs2.next())
{

%>
<h1 align="center">modificar cita</h1>
<hr>
<h2 align="center">Datos</h2>
<div id="seccionA">

<table border =0>
<tr><td colspan=1 ALIGN="left"> cedula del paciente </td><td><INPUT TYPE="text"   NAME="id_paciente" value ="<%=rs2.getString(1)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> Nombre del paciente</td><td><INPUT TYPE="text"  NAME="nombrepaciente" value ="<%=rs2.getString(2)%> <%=rs2.getString(3)%>"></td></tr>

<%


}
}

%>
<%
if (rs.next())
{
	 
	 
	 rs=st.executeQuery(query);
while(rs.next())
{

%>
<form action="updatecitas.jsp" method="post">
<tr><td colspan=1 ALIGN="left"> id consulta</td><td> <INPUT TYPE="text"  NAME="id_cita" value ="<%=rs.getString(1)%>" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> idpaciente</td><td> <input type="text" name="fechaconsulta" value ="<%=rs.getString(3)%>"> </td> </tr>
<tr><td colspan=1 ALIGN="left"> fecha</td> <td><INPUT TYPE="text" NAME="observacion" value ="<%=rs.getString(4)%>"></td> </tr>
<tr><td colspan=1 ALIGN="left"> id medico </td> <td><INPUT TYPE="text" NAME="observacion" value ="<%=rs.getString(5)%>"></td> </tr>
<tr><td colspan=1 ALIGN="left"> observacion </td> <td><textarea cols="10" rows="15" name="address" value="<%=rs.getString(6)%>"><%=rs.getString(6)%></textarea></td> </tr>
<%

}
}

%>

<%
if (rs6.next())
{
	 
	 
	 rs6=st6.executeQuery(query6);
while(rs6.next())
{

%>
<tr><td colspan=1 ALIGN="left">medico</td><td> <input type="text"  name="antespecialidad" value ="<%=rs6.getString(1)%><%=rs6.getString(2)%>"> </td> 
<%

}
}

%>






</tr>
</table>
</div>

<div id="boton">
<a href="../consulta/consultadiagnostico/verdiagnosticos.jsp?id_consulta=<%=id_consulta%>">diagnostico</a>
<a href="../consulta/consultasignovitales/mostrarsigvitales.jsp?id_consulta=<%=id_consulta%>">signos vitales</a>
<a href="../consulta/consultasintomas/mostrarsintomas.jsp?id_consulta=<%=id_consulta%>">signtomas</a>
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