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
<title>Insert title here</title>
<link href="C:\Users\richard\git\ProyectoPaciente\ProyectoClinica\WebContent\paginas\citas\cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/sirepacc","root","");
Statement st=con.createStatement();
String query="SELECT pacientes.cedula, pacientes.nombre, tespecialidades.descripcion, tusuario.nombreusu, tusuario.apellidousu "; 
query += "FROM pacientes, tespecialidades,tusuario;";

out.println(query);

ResultSet rs=st.executeQuery(query);

if (rs.next())
{
	 rs=st.executeQuery(query);
%>
<div id="seccionc">
<div class="table-responsive">
<table class="table table-striped" border="2" bordercolor="#2494b7">
<thead>
<tr>
<th>cedula del paciente</th>
<th>nombre del pacinete</th>

<th>especialidad</th>


<th>doctor</th>



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

<td><%=rs.getString(4)%> <%=rs.getString(5)%></td>




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
</body>
</html>