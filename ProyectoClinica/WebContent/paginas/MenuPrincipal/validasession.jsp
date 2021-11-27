

<%@page import="java.sql.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%@include file="../citas/Conecta.jsp" %>

<%


String query2="";
Statement st2=con.createStatement();
String username2 = (String)session.getAttribute( "TheName" );
String accion = (String)session.getAttribute( "accion" );
String modulo = (String)session.getAttribute( "mod1" );
String idusuario=(String)session.getAttribute("id");
//String modulo =  "fpriv" ;
//accion = "a";

if(accion=="abrirLab"){
	query2="select idusuario"; 
	query2 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and abrirLab = 'si' ";
	
}
else
{
if(accion == "abrirDiagno"){
	 query2="select idusuario"; 
		query2 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and abrirDiagno = 'si' ";
}
else{

if (accion == "abMedic")
{
	   query2="select idusuario"; 
	query2 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and abMedic = 'si' ";
}
else
{
	if (accion== "abrir")
	{
		 query2="select idusuario "; 
			query2 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and abrir = 'si' ";
	
	}
	else
		
	{
		if (accion== "aabrir")
		{
			 query2="select idusuario  "; 
				query2 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and aabrir= 'si' ";
		
		}
	    else
	    {
	    	if (accion== "abrirEspe")
			{
				 query2="select idusuario  "; 
					query2 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and abrirEspe = 'si' ";
			
			}
	    	else{
	    		if(accion=="acitas"){
		 query2="select idusuario  "; 
		  query2 += "from tprivilegios where idusuario = '"+idusuario+"' and idmodulo = '" + modulo + "' and acitas = 'si' ";
	    		}
	    	}
	    	
	    }
	}
	}
}
}



//out.println(query2);
ResultSet rs2=st2.executeQuery(query2);
int encontrado = 0;

while(rs2.next())
{
encontrado=1;

out.println("Bienvenido :" + rs2.getString(1) );
}
	
if (encontrado==1)
{
	
	
}
else
{
	session.setAttribute("paso","no");
	out.println("xuxa no puedes entrar");
	response.sendRedirect("../MenuPrincipal/error.jsp");	
	
}

%>


