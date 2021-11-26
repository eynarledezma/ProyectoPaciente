<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="java.sql.Connection"%>
<%@include file="../citas/Conecta.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String username=request.getParameter("username");

String password=request.getParameter("password");







Statement st=con.createStatement();



String query="select idusuario,nombre, password, concat( nombre, ' ' , apellido) fullname , direccion, telefono "; 

query += "from tusuario where username='"+username+"' and password='"+password+"'";

// query += "from info where username = '"+username+"' and password = '"+password+"'";



/*out.println(query);  */ 

ResultSet rs=st.executeQuery(query);

int encontrado = 0;

String name;

String id;

String fullname;

while(rs.next())

{

encontrado=1;

 name = rs.getString("nombre");

 fullname = rs.getString("fullname");
 
 id=rs.getString("idusuario");
 
 session.setAttribute("sesionactiva", encontrado);

 session.setAttribute( "theName", name );
 
 session.setAttribute( "id", id );

 session.setAttribute( "fullname", fullname );

 

/* out.println("Bienvenido :" +  session.getAttribute("fullname"));

//out.println("Bienvenido :" + rs.getString(6) );

out.println("<br> Variable de Sesion: "+session.getAttribute("theName"));

out.println("<br> Sesion Activa: " + session.getAttribute("sesionactiva")); */



}



if (encontrado==1)

{      

  %>

//MENU
<%

    response.sendRedirect("../MenuPrincipal/MenuPrincipal.jsp");
%>

 

<% 

}

else

{

   out.println("Usuario No registrado...");

}



%>





<br/>

<br/>

<A HREF="close.jsp">Cerrar Sesion</A><br/>

</div>

</div>

</body>
</html>