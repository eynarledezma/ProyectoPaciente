<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>


<!DOCTYPE html>
<% session.setAttribute("accion","modifica");
    session.setAttribute("mod1","4");
    
    %>
  <%@include file="../MenuPrincipal/validasession.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../consulta/cabpacientes.css" rel="Stylesheet" type= "text/css">
</head>
<body>
<% 
String id_cita="";
id_cita=(request.getParameter("id_cita") != null) ? request.getParameter("id_cita") : "";
String id_paciente="";
id_paciente=(request.getParameter("id_paciente") != null) ? request.getParameter("id_paciente") : "";
String id_especialidad="";
id_especialidad=(request.getParameter("id_especialidad") != null) ? request.getParameter("id_especialidad") : "";
String id_medico="";
id_medico=(request.getParameter("id_medico") != null) ? request.getParameter("id_medico") : "";

String query="select idcita,fecha, fechaconsulta,idespecialidad,idmedico,observacion,estado,userelimina "; 
query += "from tcitas where idcita = '"+id_cita+"' limit 1";

String query2="select cedula,nombre,apellido "; 
query2 += "from tusuario where idusuario = '"+id_paciente+"' limit 1";

String query3="select descripcion "; 
query3 += "from tespecialidades where idespecialidad = '"+id_especialidad+"' limit 1";

String query4="select idespecialidad,descripcion "; 
query4 += "from tespecialidades";

String query5="select idusuario,nombre,apellido "; 
query5 += "from tusuario";

String query6="select nombre,apellido "; 
query6 += "from tusuario where idusuario = '"+id_medico+"' limit 1";

Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
Statement st4=con.createStatement();
Statement st5=con.createStatement();
Statement st6=con.createStatement();


ResultSet rs=st.executeQuery(query);
ResultSet rs2=st2.executeQuery(query2);
ResultSet rs3=st3.executeQuery(query3);
ResultSet rs4=st4.executeQuery(query4);
ResultSet rs5=st5.executeQuery(query5);
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
<tr><td colspan=1 ALIGN="left"> cedula</td><td><INPUT TYPE="text"   NAME="id_paciente" value ="<%=rs2.getString(1)%>"></td></tr>
<tr><td colspan=1 ALIGN="left"> Nombre</td><td><INPUT TYPE="text"  NAME="nombrepaciente" value ="<%=rs2.getString(2)%> <%=rs2.getString(3)%>"></td></tr>

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
<tr><td colspan=1 ALIGN="left"> id cita</td><td> <INPUT TYPE="text"  NAME="id_cita" value ="<%=rs.getString(1)%>" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> Fecha</td><td> <INPUT TYPE="date" NAME="fechacita" value ="<%=rs.getString(2)%>" ></td> </tr>
<tr><td colspan=1 ALIGN="left"> Fecha consulta</td><td> <input type="date" name="fechaconsulta" value ="<%=rs.getString(3)%>"> </td> </tr>
<tr><td colspan=1 ALIGN="left"> Observacion </td> <td><INPUT TYPE="text" NAME="observacion" value ="<%=rs.getString(6)%>"></td> </tr>
<%

}
}

%>
<%
if (rs3.next())
{
	 
	 
	 rs3=st3.executeQuery(query3);
while(rs3.next())
{

%>
<tr><td colspan=1 ALIGN="left"> Anterior especialidad</td><td> <input type="text"   name="antespecialidad" value ="<%=rs3.getString(1)%>"> </td> </tr>
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
<tr><td colspan=1 ALIGN="left"> Anterior medico</td><td> <input type="text"  name="antespecialidad" value ="<%=rs6.getString(1)%><%=rs6.getString(2)%>"> </td> 
<%

}
}

%>
<tr><td colspan=1 ALIGN="left"> Especialidad </td> <td> <select name="especialidad" >

<%
if (rs4.next())
{
	 rs4=st4.executeQuery(query4);
	 
while(rs4.next())
{

%>

<option value="<%=rs4.getString(1)%>"><%=rs4.getString(2)%> </option>

  
<%

}
}

%>



<tr><td colspan=1 ALIGN="left"> Medico </td> <td> <select name="medico">

<%
if (rs5.next())
{
	 rs5=st5.executeQuery(query5);
	 
while(rs5.next())
{

%>

<option id=valor1 value="<%=rs5.getString(1)%>"><%=rs5.getString(2)%><%=rs5.getString(3)%></option>

  
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