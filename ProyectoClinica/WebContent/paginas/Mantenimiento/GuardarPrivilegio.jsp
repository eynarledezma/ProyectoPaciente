<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %> 
<%@page import="javax.sql.*" %> 
<%@page import="java.util.Date" %>
<%@page import="java.sql.Connection" %>
 <%@include file="../citas/Conecta.jsp" %> 
<!DOCTYPE html>
<%-- <% session.setAttribute("accion","modifica"); --%>
//     session.setAttribute("mod1","1");
//     session.setAttribute("mod3","3");
<%--     %> --%>
<%--   <%@include file="../MenuPrincipal/validasession.jsp" %> --%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

Statement stt=con.createStatement();

String sqlid="select MAX(idusuario)AS idusuario FROM tusuario";
//int flag=stt.executeUpdate(sqlid);
ResultSet rs=stt.executeQuery(sqlid);
rs.next();
String idusuario="";%>
<% 
session.setAttribute( "idusuario", rs.getString(1));

%>
 
<%

//String idusuarioo=request.getParameter("idusuario"); 
String moduloo=request.getParameter("modulo"); 
String imprimirr=request.getParameter("privilegio1"); 
String lecturaa=request.getParameter("privilegio2"); 
String modificarr=request.getParameter("privilegio3"); 
String insertarr=request.getParameter("privilegio4"); 
String abrirr=request.getParameter("privilegio5"); 
String eliminarr=request.getParameter("privilegio6"); 
String idusuarioo=(String)session.getAttribute("idusuario");
Statement st=con.createStatement();
	String sql="insert into tprivilegios(idusuario,idmodulo,lectura,insertar,modificar,eliminar,imprimir,abrir) values ('"+idusuario+"','"+moduloo+"','"+lecturaa+"','"+insertarr+"','"+modificarr+"','"+eliminarr+"','"+imprimirr+"','"+abrirr+"')";
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