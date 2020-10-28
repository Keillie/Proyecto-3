
package DAO;

import Modelo.Producto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utils.VariablesGlobales;

/**
 * Clase implentada para guadar y listar productos
 * @author Otra (Nueva)
 */

public class ProductoDAO {
    /**
    * Método para obtener todos los registros de la base de datos como objetos
    * @return List de clientes
    */
    public List<Producto> getDBProductos(){
        List<Producto> productos = new ArrayList<Producto>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT id, nombreProducto, precioUnitario"+
                              " FROM productos";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                productos.add(new Producto(rs.getString("nombreProducto"), rs.getDouble("precioUnitario")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productos;
    }

    /**
    * Método sirve para persistir las carreras en la base de datos
    * @param carrera
    */
    public void saveProducto(Producto producto){
        
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "INSERT INTO productos(nombreProducto,precioUnitario) VALUES("+
                        producto.getNombreProducto() + ",'" + producto.getPrecioUnitario() + "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        
        
    }
}
