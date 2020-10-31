<%-- 
    Document   : Ordenes
    Created on : Oct 22, 2020, 11:42:02 PM
    Author     : Otra (Nueva)
--%>

<%@page import="Modelo.Orden"%>
<%@page import="java.util.List"%>
<%@page import="DAO.OrdenDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>JSP Page</title>
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
            <h1><strong>Auto Partes Ordenes</strong></h1>
        </div>
    </head>
    <body>
        <table class="table table-hover table-white">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Id</th>
                    <th scope="col">Proveedor</th>
                    <th scope="col">Nombre Producto</th>
                    <th scope="col">Precio Unitario</th>
                    <th scope="col">Cantidad</th>
                     <th scope="col">Fecha Orden</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Dias envio</th>
                    <th scope="col">Tipo envio</th>
                    <th scope="col">Total</th>
                </tr>
            </thead>
            <tbody>
                
                <%
              //1. Crear una instancia DAO correpondiente a las carreras
              OrdenDAO ordenDao = new OrdenDAO();
              
              if(request.getParameter("botonEliminar") != null) {
                  ordenDao.deleteOrden();
              }
              
              //2. Obtener todas las carreras de la base de datos
              List<Orden> ordenes = ordenDao.getDBOrdenes();
              //3. Iterar todas las carreras
              int i=0;
              for(Orden orden : ordenes){
              //4. Pintar el HTML que correponde a cada carrera
                i++;
              %>
              
                <tr>
                    <th scope="row"><%=i%></th>
                 <td><%=orden.getId()%></td>
                 <td><%=orden.getProveedor()%></td>
                <td><%=orden.getNombreProducto()%></td>
                <td><%=orden.getPrecioUnitario()%></td>
                <td><%=orden.getCantidad()%></td>
                <td><%=orden.getFechaOrden()%></td>
                <td><%=orden.getEstado()%></td>
                <td><%=orden.getDiasEnvio()%></td>
                <td><%=orden.getTipoEnvio()%></td>
                <td><%=orden.getTotal()%></td>
                </tr>
                <% 
               }
              %>
            </tbody>
        </table>
            <form action="Ordenes.jsp" method="POST">
                <button type="submit" class="btn btn-primary" id="botonEliminar" name="botonEliminar" class="container mt-4 text-center" >Eliminar Ultima Orden</button>
            </form>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
