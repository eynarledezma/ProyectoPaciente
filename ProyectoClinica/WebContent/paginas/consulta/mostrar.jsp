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
<%

Statement st=con.createStatement();
String query="SELECT * "; 
query += "FROM tconsulta";

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
<table style="position:absolute;top:150px;left:550px;" class="table table-striped" border="2" bordercolor="#2494b7">
<thead>
<tr>
<th>id_consulta</th>
<th>id_cita</th>
<th>id_paciente</th>
<th>fecha</th>
<th>idmedico</th>
<th>id_especialidad</th>
<th>observacion</th>
<th>ver consulta</th>


</tr>
<thead>
<%

while(rs.next())

{

%>


<tr>

<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
<td><a href="consulta.jsp?id_consulta=<%=rs.getString(1)%>&id_paciente=<%=rs.getString(3)%>&id_especialidad=<%=rs.getString(6)%>&fecha=<%=rs.getString(4)%>&id_medico=<%=rs.getString(5)%>&observacion=<%=rs.getString(7)%>">--</a></td>





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