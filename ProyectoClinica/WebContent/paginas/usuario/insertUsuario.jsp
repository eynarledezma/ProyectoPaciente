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
</head>
<body>
<%
// int idempleado=Integer.parseInt(request.getParameter("idempleado"));
String cedula=request.getParameter("cedula");
String nombre=request.getParameter("nombre");
String apellido=request.getParameter("apellido");
String direccion=request.getParameter("direccion");
String telefono=request.getParameter("telefono");
String email=request.getParameter("email");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sirepacc","root","system");

Statement st=con.createStatement();

String sql="insert into tusuario (cedula,nombre,apellido,direccion,telefono,email,password) values('"+cedula+"','"+nombre+"','"+apellido+"','"+direccion+"','"+telefono+"','"+email+"','"+password+"')";

int flag=st.executeUpdate(sql);
 
if(flag==1)
 
{
 
out.println("Dato Agregado");
 
}
 
else
 
{
 
out.println("Existe un error....ingrese nuevamente los datos ");
 
}
 
response.sendRedirect("Usuario.jsp");
 
%>
</body>
</html>