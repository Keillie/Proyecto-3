<%-- 
    Document   : CrearOrdenes
    Created on : Oct 28, 2020, 10:33:00 AM
    Author     : Otra (Nueva)
--%>

<%@page import="Modelo.Orden"%>
<%@page import="DAO.OrdenDAO"%>
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
            <h1><strong>Crear ordenes</strong></h1>
        </div> 
        <form action="CrearOrdenes.jsp" method="POST">
            <p>
            <div class="form-group">
              <label for="proveedor">Proveedor: </label>
              <input type="text" class="form-control" id="codigo" name="proveedor" aria-describedby="proveedor" >              
            </div>            
            <div class="form-group">
              <label for="nombreProducto">Nombre Producto: </label>
              <input type="text" class="form-control" id="nombre" name="nombreProducto" aria-describedby="nombreProducto">
            </div>
            <div class="form-group">
              <label for="precioUnitario">Precio Unitario: </label>
              <input type="text" class="form-control" id="nombre" name="precioUnitario" aria-describedby="precioUnitario">
            </div>
            <div class="form-group">
              <label for="cantidad">Cantidad: </label>
              <input type="text" class="form-control" id="nombre" name="cantida" aria-describedby="cantida">
            </div>
            
            </div>
            <div class="form-group">
              <label for="cantidad">Fecha Orden: </label>
              <input type="text" class="form-control" id="nombre" name="fechaOrden" aria-describedby="fechaOrden">
            </div>
            
            <tr><td><label for="estado">Estado: </label></td>
                <td><select name="estado" id="estado">
                        <option>Pendiente</option>
                        <option>Procesando</option>
                        <option>Completada</option>
                    </select></td>
            </tr>
            <tr><td><label for="diasEnvio">Dias envio: </label></td>
                <td><select name="diasEnvio" id="diasEnvio">
                        <option>1 Dia</option>
                        <option>10 Dias</option>
                        <option>15 Dias</option>
                        <option>30 Dias</option>
                    </select></td>
            </tr>
            <tr><td><label for="tipoEnvio">Tipo envio: </label></td>
                <td><select name="tipoEnvio" id="tipoEnvio">
                        <option>Entrega en tienda</option>
                        <option>Via terrestre</option>
                        <option>Paquetería FedEx</option> 
                    </select></td>
            </tr>
            </p>
            <button type="submit" class="btn btn-primary" class="container mt-4 text-center" >Guardar</button>
        </form>
        <%
            try{
               //Creacion de instancia para las ordenes
              OrdenDAO ordenDao = new OrdenDAO();

              String proveedor = request.getParameter("proveedor");
              String nombreProducto = request.getParameter("nombreProducto");
              //double precioUnitario = Double.parseDouble(request.getParameter("precioUnitario"));
              String precioUnitariotmp = request.getParameter("precioUnitario");
              double precioUnitario = Double.parseDouble(precioUnitariotmp);
              String cantidadtmp = request.getParameter("cantidad");
              int cantidad = Integer.parseInt(cantidadtmp);
              String fechaOrden = request.getParameter("fechaOrden");
              String estado = request.getParameter("estado");
              String diasEnvio = request.getParameter("diasEnvio");
              String tipoEnvio = request.getParameter("tipoEnvio");

              //Verificar si contienen valores los campos
              
              if (proveedor!= null && nombreProducto!= null && precioUnitario!= 0 && cantidad!= 0 && fechaOrden!= null && estado!= null && diasEnvio!= null && tipoEnvio!= null) {
                      ordenDao.saveOrden(new Orden(proveedor, nombreProducto, precioUnitario, cantidad, fechaOrden, estado, diasEnvio, tipoEnvio));
              }  
            }catch(Exception nul){
                nul.printStackTrace();
            }
        %>
        <div class="alert alert-success" role="alert">
                ¡Orden creada exitosamente! <a href="Ordenes.jsp" class="alert-link">Orden</a>. 
            </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
