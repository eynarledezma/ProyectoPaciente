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
String cedulaa=request.getParameter("cedula"); 
String estado=request.getParameter("estado"); 
String username=request.getParameter("username"); 
int sexo=Integer.parseInt(request.getParameter("sexo")); 
String fechanacimiento=request.getParameter("fechanaciento"); 
    int edad=Integer.parseInt(request.getParameter("edad"));
	Statement st=con.createStatement();
	String sql="insert into tusuario(cedula,nombre,apellido,direccion,telefono,email,password,celular,estado,username,sexo,edad) values ('"+cedulaa+"','"+nombre+"','"+apellido+"','"+direccion+"','"+telefono+"','"+email+"','"+password+"','"+celular+"','"+estado+"','"+username+"','"+sexo+"','"+edad+"')";
	int flag=st.executeUpdate(sql);

	
	out.print("ESPECIALIDAD REGISTRADA"); 
	
	
%> 

 <% 
String site = new String("../Mantenimiento/registro_paciente.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site);
         %> 

</body>
</html>