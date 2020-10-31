
package DAO;

import Modelo.Orden;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utils.VariablesGlobales;

/**
 * Clase implemtada para manejar base de datos de los registros de las ordenes
 * @author Otra (Nueva)
 */
public class OrdenDAO {
    /**
    * Método para obtener todos los registros de la base de datos como objetos
    * @return List de ordenes
    */
    public List<Orden> getDBOrdenes(){
        List<Orden> ordenes = new ArrayList<Orden>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT id, proveedor, nombreproducto, preciounitario, cantidad, fechaorden, estado, diasenvio, tipoenvio, total " +
                              " FROM ordenesdb";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                ordenes.add(new Orden(rs.getString("proveedor"), rs.getString("nombreproducto"), rs.getDouble("preciounitario"), rs.getInt("cantidad"), rs.getString("fechaorden"), rs.getString("estado"), rs.getString("diasenvio"), rs.getString("tipoEnvio")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ordenes;
    }

    /**
    * Método sirve para persistir las ordenes en la base de datos
    * @param ordenes
    */
    public void saveOrden(Orden orden){
        
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "INSERT INTO ordenesdb(proveedor, nombreproducto, preciounitario, cantidad, fechaorden, estado, diasenvio, tipoenvio) VALUES("+
                    "'" + orden.getProveedor() + "','" + orden.getNombreProducto() + 
                    orden.getPrecioUnitario() + "','" + orden.getCantidad() +
                    orden.getFechaOrden() + "','" + orden.getEstado() +
                    orden.getDiasEnvio() + "','" + orden.getTipoEnvio() +"')";
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
    public void deleteOrden(){
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "DELETE FROM ordenesdb\n" +
                         "WHERE id = (SELECT id FROM ordenesdb ORDER BY id DESC LIMIT 1);";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }  
}
