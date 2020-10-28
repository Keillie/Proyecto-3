<%-- 
    Document   : CrearProductos
    Created on : Oct 27, 2020, 1:26:03 PM
    Author     : Otra (Nueva)
--%>

<%@page import="Modelo.Producto"%>
<%@page import="DAO.ProductoDAO"%>
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
            <h1><strong>Ingresar Productos</strong></h1>
        </div>
        <% 
            String nombreProducto = request.getParameter("nombreProducto");
            String precioUnitario = request.getParameter("precioUnitario");
            if(nombreProducto==null && precioUnitario==null){
        %>

        <form action="CrearProductos.jsp" method="POST">
            <div class="form-group">
              <label for="nombreProducto">Nombre Producto: </label>
              <input type="text" class="form-control" id="codigo" name="nombreProducto" aria-describedby="producto" >              
            </div>            
            <div class="form-group">
              <label for="precioUnitario">Precio Unitario: </label>
              <input type="text" class="form-control" id="nombre" name="precioUnitario" aria-describedby="precio">
            </div>
            <button type="submit" class="btn btn-primary">Guardar</button>
        </form>
        <%
            }else{
                //1. Crear una instancia de CarreraDAO
                ProductoDAO productoDao = new ProductoDAO();
                //2. Crear una instancia de Carrera
                Producto producto = new Producto(nombreProducto, Double.parseDouble(precioUnitario));
                //3. Insertar en la DB la carrera
                productoDao.saveProducto(producto);
            %>
            <div class="alert alert-success" role="alert">
                Producto ingresasdo exitosamente <a href="AltasBajasProduc.jsp" class="alert-link">Lista productos</a>. 
            </div>
            <%
                }
                %>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
