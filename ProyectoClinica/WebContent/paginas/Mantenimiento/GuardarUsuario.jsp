<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %> 
<%@page import="javax.sql.*" %> 
<%@page import="java.util.Date" %>
<%@page import="java.sql.Connection" %>
<%@include file="../citas/Conecta.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 	String cedula=request.getParameter("cedula"); 
String nombre=request.getParameter("nombre"); 
String apellido=request.getParameter("apellido"); 
String direccion=request.getParameter("direccion"); 
String telefono=request.getParameter("telefono"); 
String email=request.getParameter("email"); 
String password=request.getParameter("password");
String celular=request.getParameter("celular"); 
String estado=request.getParameter("estado"); 
String username=request.getParameter("username"); 
String sexo=request.getParameter("sexo"); 
String fnac=request.getParameter("fechanacimiento"); 
String  edad=request.getParameter("edad");
/* SimpleDateFormat formato = new SimpleDateFormat("dd/LL/yyyy"); */
/* date fecha= formato.format(fechanacimiento); */
 	/* Date fecha = new SimpleDateFormat ("dd/MM/yyyy").parse(fechanacimiento);  */
	Statement st=con.createStatement();
	String sql="insert into tusuario(cedula,nombre,apellido,direccion,telefono,email,password,celular,estado,username,sexo,fecha_nac,edad) values ('"+cedula+"','"+nombre+"','"+apellido+"','"+direccion+"','"+telefono+"','"+email+"','"+password+"','"+celular+"','"+estado+"','"+username+"','"+sexo+"','"+fnac+"','"+edad+"')";
	int flag=st.executeUpdate(sql);

	
	out.print("ESPECIALIDAD REGISTRADA"); 
	
	
%> 

 <% 
String site = new String("../Mantenimiento/conf_usuario.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %> 

</body>
</html>