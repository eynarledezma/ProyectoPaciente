<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
<%@include file="../consultadiagnostico/Conecta.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>crear cita</title>
<link href="../consultadiagnostico/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>
<%
String id_consulta="";
id_consulta=(request.getParameter("id_consulta") != null) ? request.getParameter("id_consulta") : "";
String id_paciente="";
id_paciente=(request.getParameter("id_paciente") != null) ? request.getParameter("id_paciente") : "";

Statement st=con.createStatement();
String query="SELECT   `tconsultadiagnostico`.`idconsultadiag`, `tconsultadiagnostico`.`id_consulta`, `tconsultadiagnostico`.`iddiagnostico`, `tconsultadiagnostico`.`observacion`, `tconsultadiagnostico`.`fecha` "; 
query += "FROM tconsultadiagnostico where id_consulta = '"+id_consulta+"' limit 1";

out.println(query);

ResultSet rs=st.executeQuery(query);

if (rs.next())
{
	 rs=st.executeQuery(query);
%>
<h1 align="center">consulta</h1>
<hr>
<h2 align="center">Datos</h2>

<div id="seccionC" class="table-responsive">
<table style="position:absolute;top:150px;left:650px;" class="table table-striped" border="2" bordercolor="#2494b7">
<thead>
<tr>
<th>id</th>
<th>id_consulta</th>
<th>id_diagnostico</th>
<th>observacion</th>
<th>fecha</th>





</tr>
<thead>
<%

while(rs.next())

{
	String deciciones="";
	if (rs.getString(3).equals("1")){
		deciciones="temperatura";
	}else if (rs.getString(3).equals("2")){
		deciciones="precion arterial";
	}else if (rs.getString(3).equals("3")){
		deciciones="oxigeno";
	}else if (rs.getString(3).equals("4")){
			deciciones="peso";
		}else if (rs.getString(3).equals("5")){
				deciciones="talla";
			}else
%>


<tr>

<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>









</tr>



<%

}

%>
</table>
<%

}
else
{
	out.println("No existen registros con este Criterio de Búsqueda ");
}
	

%>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
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