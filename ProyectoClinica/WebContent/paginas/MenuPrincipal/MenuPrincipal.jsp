<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.Connection"%>  

<!DOCTYPE html>
<%--   <%  session.setAttribute("accion","lectura");
       session.setAttribute("mod1","mantenimiento");
    %> --%>
  
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link href="../MenuPrincipal/steel/MenuOpciones.css" rel="Stylesheet" type= "text/css">

<title>Sistema de Pacientes</title>
</head>
    <body>
    
  
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Sistema de Pacientes</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <div id="header">
			<ul class="nav">
				<li><a  ><font color="white">Mantenimiento</font></a>
					<ul>
						<li><a href="../Mantenimiento/registro_paciente.jsp" target="miContenedor">Registro Paciente</a></li>
						<li><a href="../Mantenimiento/conf_estado.jsp" target="miContenedor">Config. Estado</a></li>
						<li><a href="../Mantenimiento/conf_usuario.jsp" target="miContenedor">Config. Usuario</a></li>
						<li><a href="../Mantenimiento/conf_especialidad.jsp" target="miContenedor">Config. Especialidad</a>
							<ul>
								<li><a href="">Submenu1</a></li>
								<li><a href="">Submenu2</a></li>
								<li><a href="">Submenu3</a></li>
								<li><a href="">Submenu4</a></li>
							</ul>
						</li>
						<li><a href="../consulta/consultareseta/modificar.jsp" target="miContenedor">Config. Medicamentos</a></li>
						<li><a href="../consulta/consultasintomas/modificar.jsp" target="miContenedor">Config. Sintomas</a></li>
						<li><a href="../consulta/consultadiagnostico/modificar.jsp" target="miContenedor">Config. Diagnostico</a></li>
						<li><a href="../consulta/consultalaboratorio/modificar.jsp" target="miContenedor">Config. Laboratorio</a></li>
					</ul>
				</li>
				<li><a><font color="white">Citas</font></a> 
					<ul>
						<li><a href="../citas/crearcita.jsp" target="miContenedor">Crear Citas</a></li>
						<li><a href="../citas/modificar.jsp" target="miContenedor">ver citas</a></li>
						<li><a href="">Submenu3</a></li>
						<li><a href="">Submenu4</a>
							<ul>
								<li><a href="">Submenu1</a></li>
								<li><a href="">Submenu2</a></li>
								<li><a href="">Submenu3</a></li>
								<li><a href="">Submenu4</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a><font color="white">Consulta</font></a>
					<ul>
						<li><a href="../consulta/crearconsulta.jsp" target="miContenedor">crear consulta</a></li>
						<li><a href="../consulta/mostrar.jsp" target="miContenedor">ver consulta</a></li>
						<li><a href="../consulta/consultalaboratorio/crearlaboratorio.jsp " target="miContenedor">crear laboratorio</a></li>
						<li><a href="../consulta/consultareseta/crearreseta.jsp" target="miContenedor">crear receta</a></li>
					</ul>
				</li>
				<li><a><font color="white">Reporte</font></a></li>
			</ul>
		</div>
                <div class="btn-group">
                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <a>Bienvenido  </a> 
                        <a><%=  session.getAttribute("fullname") %></a>                       
                    </button>
                    <div class="dropdown-menu">
                       <%--  <a class="dropdown-item" href="#"><i class="fas fa-user"></i></a>
                        <a class="dropdown-item" href="#">Bienvenido</a>
                        <a class="dropdown-item" href="#"><%=  session.getAttribute("fullname") %></a>  --%>
                        <div class="dropdown-divider"></div>
                        <form class="dropdown-item" method="POST" action="Login.jsp" >
                        	<%   session.setAttribute( "fullname", ' ' );  %>
                        	           
                            <button class="btn btn-danger center-block" type="submit" name="accion" value="Salir"  >Cerrar Sesion</button>
                        </form>
                    </div>
                </div>
            </div>
        </nav>

        <div class="m-3" style="height:900px;">
            <iframe name="miContenedor" style="height:100%; width:100%;" frameBorder="1"></iframe>
        </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>

</html>