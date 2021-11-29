

<%@page import="java.sql.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%@include file="../citas/Conecta.jsp" %>

<%


String query10="";
Statement st10=con.createStatement();
String username = (String)session.getAttribute( "TheName" );
String accion = (String)session.getAttribute( "accion" );
String modulo = (String)session.getAttribute( "mod1" );
String idusuario=(String)session.getAttribute("id");
//String modulo =  "fpriv" ;
//accion = "a";

if(accion=="lectura"){
	query10="select idusuario "; 
	query10 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and lectura = 'si' ";
	
}
else
{
if(accion == "insertar"){
	 query10="select idusuario "; 
		query10 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and insertar = 'si' ";
}
else{

if (accion == "modificar")
{
	   query10="select idusuario "; 
	query10 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and modificar = 'si' ";
}
else
{
	if (accion== "eliminar")
	{
		 query10="select idusuario "; 
			query10 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and eliminar = 'si' ";
	
	}
	else
		
	{
		if (accion== "imprimir")
		{
			 query10="select idusuario  "; 
				query10 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and imprimir= 'si' ";
		
		}
	    else
	    {
	    	if (accion== "abrir")
			{
				 query10="select idusuario  "; 
					query10 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and abrir = 'si' ";
			
			}
	    	else{
	    		if(accion=="acitas"){
		 query10="select idusuario  "; 
		  query10 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and acitas = 'si' ";
	    		}
	    	}
	    	
	    }
	}
	}
}
}



//out.println(query2);
ResultSet rs10=st10.executeQuery(query10);
int encontrado = 0;

while(rs10.next())
{
encontrado=1;

out.println("Bienvenido :" + rs10.getString(1) );
}
	
if (encontrado==1)
{
	
	
}
else
{
	
	response.sendRedirect("../error.jsp");	
	
}

%>


