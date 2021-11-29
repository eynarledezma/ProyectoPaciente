<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
 
<%@page import="java.io.*" %>
 
<%@page import="javax.sql.*" %>
 
<%@page import="java.sql.Connection" %>

<!DOCTYPE html>
<% session.setAttribute("accion","eliminar");
    session.setAttribute("mod1","5");
    %>
  <%@include file="../MenuPrincipal/validasession.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String id_cita=request.getParameter("id_cita");
String eliminar = "6";

%>
<% 
Statement st=con.createStatement();
 
String sql="update tcitas set  estado='"+eliminar+"' where idcita='"+id_cita+"'" ;
out.println(sql); 
int flag=st.executeUpdate(sql);
 
if(flag==1)
 
{
 
out.println("Modificado!");
response.sendRedirect("../citas/modificar.jsp");
}
 
else
 
{
 
out.println("Failed");
response.sendRedirect("../MenuPrincipal/error.jsp");
}

 
%>
</body>
</html>