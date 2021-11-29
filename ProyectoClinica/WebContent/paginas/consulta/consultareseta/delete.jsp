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
<title>Insert title here</title>
</head>
<body>
<% 
String id_consulta=request.getParameter("id_consulta");
String eliminar = "6";

%>
<% 
Statement st=con.createStatement();
 
String sql="update tconsultareceta set  estado='"+eliminar+"' where id='"+id_consulta+"'" ;
out.println(sql); 
int flag=st.executeUpdate(sql);
 
if(flag==1)
 
{
 
out.println("Modificado!");
 
}
 
else
 
{
 
out.println("Failed");
 
}
 response.sendRedirect("modificar.jsp");
 
%>
</body>
</html>