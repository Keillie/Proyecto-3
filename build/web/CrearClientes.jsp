<%-- 
    Document   : CrearClientes
    Created on : Oct 26, 2020, 5:20:13 PM
    Author     : Otra (Nueva)
--%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Cliente"%>
<%@page import="DAO.ClientesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
            <a style="color: white" href="index.jsp" class="nav-link dropdown-toggle">Salir</a>

        </nav>
       <div class="container mt-4 text-center">
            <h1><strong>Ingresar clientes</strong></h1>
        </div>
        
        <form action="CrearClientes.jsp" method="POST">
            <p>
                
            <div class="form-group">
              <label for="nombre">Nombre: </label>
              <input type="text" class="form-control" id="nombre" name="nombre" aria-describedby="nombre" >              
            </div>            
            <div class="form-group">
              <label for="apellido">Apellido: </label>
              <input type="text" class="form-control" id="apellido" name="apellido" aria-describedby="apellido">
            </div>
            <div class="form-group">
              <label for="correoElectronico">Correo electronico: </label>
              <input type="text" class="form-control" id="correoElectronico" name="correoElectronico" aria-describedby="correoElectronico">
            </div>
            <div class="form-group">
              <label for="telefono">Telefono: </label>
              <input type="text" class="form-control" id="telefono" name="telefono" aria-describedby="telefono">
            </div>
            <tr><td><label for="tipoCliente">Tipo cliente: </label></td>
                <td><select name="tipoCliente" id="tipoCliente">
                        <option>Individual</option>
                        <option>Empresa</option>
                    </select></td>
            </tr>
            
            
            </p>
            <button type="submit" class="btn btn-primary" class="container mt-4 text-center" >Guardar</button>
        </form>
        <%
              //1. Crear una instancia DAO correpondiente a las carreras
              ClientesDAO clientesDao = new ClientesDAO();
              
              String nombre = request.getParameter("nombre");
              String apellido = request.getParameter("apellido");
              String correoElectronico = request.getParameter("correoElectronico");
              String telefono = request.getParameter("telefono");
              String tipoCliente = request.getParameter("tipoCliente");
              //2. Obtener todas las carreras de la base de datos
              
              if (nombre != null && 
                  apellido != null && 
                  correoElectronico != null && 
                  telefono != null && 
                  tipoCliente != null) {
                      clientesDao.saveCliente(new Cliente(nombre, apellido, correoElectronico, telefono, tipoCliente));
              } /*else {
              }*/
        %> 
        <div class="alert alert-success" role="alert">
                ¡Cliente ingresado exitosamente! <a href="AltasBajasClientes.jsp" class="alert-link">Lista Clientes</a>. 
            </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
