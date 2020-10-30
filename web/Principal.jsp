<%-- 
    Document   : Principal
    Created on : Oct 16, 2020, 6:32:50 PM
    Author     : Otra (Nueva)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-dark">
            
        <li class="dropdown">
        <a style="color: white" href="#" class="dropdown-toggle" data-toggle="dropdown">Clientes <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="AltasBajasClientes.jsp">Clientes</a></li>
          <li><a href="CrearClientes.jsp">Crear Cliente</a></li>
        </ul>
      </li>
      
      <li class="dropdown">
        <a style="color: white"  href="#" class="dropdown-toggle" data-toggle="dropdown">Productos <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="AltasBajasProduc.jsp">Productos</a></li>
          <li><a href="CrearProductos.jsp">Ingresar Producto</a></li>
        </ul>
      </li>
      
      <li class="dropdown">
        <a style="color: white"  href="#" class="dropdown-toggle" data-toggle="dropdown">Ordenes de compra <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="Ordenes.jsp">Lista Orden</a></li>
          <li><a href="CrearOrdenes.jsp">Crear Orden</a></li>
        </ul>
      </li>
            
            <div class="dropdown">
                <a style="color: white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cerrar Sesion</a>
                <div class="dropdown-item text-center">
                   <a>
                       <img src="img/seguridad.png" alt="" height="80" width="80"/>
                   </a>
                    <a>Usuario</a>
                    <div class="dropdown-divider"></div>
                    <a href="index.jsp" class="dropdown-item">Salir</a>
                </div>
            </div>
        </nav>
        
        <div id="wrapper">
            <div class="container mt-4 text-center">
            <h1>Bienvenido al sistema de <strong>Auto Partes</strong></h1>
        </div>
            <img src="img/4c9a8386cb7b5ee21e9328daacf26daf.jpg" alt=""  height="600" width="1350"/>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
