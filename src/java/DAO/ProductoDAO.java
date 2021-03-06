
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
            String consulta = " SELECT id, nombreproducto, preciounitario"+
                              " FROM productos";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                productos.add(new Producto(rs.getString("nombreproducto"), rs.getDouble("preciounitario")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productos;
    }

    /**
    * Método sirve para persistir las carreras en la base de datos
    * @param producto
    */
    public void saveProducto(Producto producto){
        
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "INSERT INTO productos(nombreproducto, preciounitario) VALUES("+
                    "'" + producto.getNombreProducto() + "','" + 
                    producto.getPrecioUnitario() + "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }  
    
    /**
     * Clase deleteProducto realiza la accion de borrar un registro en la tabla producto siendo el ultimo registro en eliminar 
     * siempre y lo actualiza de la la lista automaticamente
     */
    public void deleteProducto(){
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "DELETE FROM productos\n" +
                         "WHERE id = (SELECT id FROM productos ORDER BY id DESC LIMIT 1);";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }  
}
