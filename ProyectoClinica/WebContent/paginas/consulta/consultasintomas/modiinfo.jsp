<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>
<%@include file="../consultadiagnostico/Conecta.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../consultadiagnostico/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>
<% 
String id_consulta="";
id_consulta=(request.getParameter("id_consulta") != null) ? request.getParameter("id_consulta") : "";
String id_paciente="";
id_paciente=(request.getParameter("id_paciente") != null) ? request.getParameter("id_paciente") : "";
String id_diagnostico="";
id_diagnostico=(request.getParameter("id_diagnostico") != null) ? request.getParameter("id_diagnostico") : "";
String observacion="";
observacion=(request.getParameter("observacion") != null) ? request.getParameter("observacion") : "";

String query="select *"; 
query += "from tconsultasintomas where idconsultasintomas = '"+id_consulta+"' limit 1";

String query2="select *"; 
query2 += "from tsintomas";


Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery(query2);
%>
<%
if (rs.next())
{
	 
	 
	 rs=st.executeQuery(query);
while(rs.next())
{

%>
<h1 align="center">modificar diagnostico</h1>
<hr>
<h2 align="center">Datos</h2>
<div id="seccionA">
<form action="update.jsp" method="post">
<table border =0>
<tr><td colspan=1 ALIGN="left">id_consulta</td><td><INPUT TYPE="text"   NAME="id_consulta" value ="<%=rs.getString(1)%>"></td></tr>
<tr><td colspan=1 ALIGN="left">id_paciente</td><td><INPUT TYPE="text"  NAME="nombrepaciente" value ="<%=rs.getString(5)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> dato</td><td><INPUT TYPE="text"  NAME="observacion" value ="<%=rs.getString(7)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> sintomas </td> <td> <select name="sintomas">
<%

}
}

%>
<%
if (rs2.next())
{
	 rs2=st2.executeQuery(query2);
	 
while(rs2.next())
{

%>

<option id=valor1 value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%></option>

  
<%

}
}

%>






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