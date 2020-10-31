<%-- 
    Document   : AltasBajasClientes
    Created on : Oct 22, 2020, 11:29:25 PM
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
            <a style="color: white" href="index.jsp" class="nav-link dropdown-toggle">Salir</a>
        </nav>
        <div class="container mt-4 text-center">
            <h1><strong>Auto Partes Clientes</strong></h1>
        </div> 
        <table class="table table-hover table-white">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Correo</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">Tipo Cliente</th>
                </tr>
            </thead>
            <tbody>
                 <%
              //1. Crear una instancia DAO correpondiente a las carreras
              ClientesDAO clientesDao = new ClientesDAO();
              
              if(request.getParameter("botonEliminar") != null) {
                  clientesDao.deleteCliente();
              }
              
              //2. Obtener todas las carreras de la base de datos
              List<Cliente> clientes = clientesDao.getDBClientes();
              //3. Iterar todas las carreras
              int i=0;
              for( Cliente cliente : clientes){
              //4. Pintar el HTML que correponde a cada carrera
                i++;
              %>
                <tr>
                <th scope="row"><%=i%></th>
                <td><%=cliente.getId()%></td>
                <td><%=cliente.getNombre()%></td>
                <td><%=cliente.getApellido()%></td>
                <td><%=cliente.getCorreoElectronico()%></td>
                <td><%=cliente.getTelefono()%></td>
                <td><%=cliente.getTipoCliente()%></td>
              </tr>
              <% 
               }
              %> 
            </tbody>
        </table>
            <form action="AltasBajasClientes.jsp" method="POST">
                <button type="submit" class="btn btn-primary" id="botonEliminar" name="botonEliminar" class="container mt-4 text-center" >Eliminar Cliente</button>
            </form>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
