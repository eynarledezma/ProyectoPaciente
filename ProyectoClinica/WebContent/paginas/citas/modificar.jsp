<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<% session.setAttribute("accion","lectura");
    session.setAttribute("mod1","3");
    
    %>
  <%@include file="../MenuPrincipal/validasession.jsp" %>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../citas/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>
<%

Statement st=con.createStatement();
String query="SELECT * "; 
query += "FROM tcitas WHERE estado ='5'";

out.println(query);

ResultSet rs=st.executeQuery(query);

if (rs.next())
{
	 rs=st.executeQuery(query);
%>
<h1 align="center">modificar cita</h1>
<hr>
<h2 align="center">Datos</h2>

<div id="seccionA" class="table-responsive">

<table style="position:absolute;top:150px;left:550px;" class="table table-striped" border="2" bordercolor="#2494b7">
<thead>
<tr>
<th>id_cita</th>
<th>id_paciente</th>
<th>fecha</th>
<th>fecha de consulta</th>
<th>id_especialidad</th>
<th>idmedico</th>
<th>observacion</th>
<th>modificar</th>
<th>eliminar</th>

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
<td><a href="modiinfo.jsp?id_cita=<%=rs.getString(1)%>&id_paciente=<%=rs.getString(2)%>&id_especialidad=<%=rs.getString(5)%>&id_medico=<%=rs.getString(6)%>">--</a></td>
<td><a href=delete.jsp?id_cita=<%=rs.getString(1)%>>--</a></td>




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