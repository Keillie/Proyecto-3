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
          
            <a style="color: white" class="navbar-toggler"><span class="navbar-toggler-icon"></span>Menu</a>
            <a style="color: white" href="AltasBajasClientes.jsp" class="nav-link dropdown-toggle">Clientes</a>
            <a style="color: white" href="AltasBajasProduc.jsp" class="nav-link dropdown-toggle">Productos</a>
            <a style="color: white" href="Ordenes.jsp" class="nav-link dropdown-toggle">Ordenes de compra</a>
            <div class="dropdown">
                
                <a style="color: white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cerrar Sesion</a>
                <div class="dropdown-item text-center">
                   
                    <a><img src="WEB-INF/img/user1.png" height="80" width="80"></a>
                    <a>Usuario</a>
                    <div class="dropdown-divider"></div>
                    <a href="index.jsp" class="dropdown-item">Salir</a>
                </div>
            </div>
        </nav>
        <div class="container mt-4">
            <h1>Bienvenido al sistema de <strong>Auto Partes</strong></h1>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
