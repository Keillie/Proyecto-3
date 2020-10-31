
package DAO;

import Modelo.Cliente;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utils.VariablesGlobales;

/**
 * Clase para listar y guardar nuesvos clientes
 * @author Otra (Nueva)
 */
public class ClientesDAO {
    /**
    * Método para obtener todos los registros de la base de datos como objetos
    * @return List de clientes
    */
    public List<Cliente> getDBClientes(){
        List<Cliente> clientes = new ArrayList<Cliente>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT id, nombre, apellido, correoelectronico, telefono, tipocliente"+
                              " FROM clientes";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                clientes.add(new Cliente(rs.getString("nombre"), rs.getString("apellido"), rs.getString("correoelectronico"), rs.getString("telefono"), rs.getString("tipocliente")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return clientes;
    }

    /**
    * Método sirve para persistir las carreras en la base de datos
    * @param cliente
    */
    public void saveCliente(Cliente cliente){
        
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "INSERT INTO clientes(nombre, apellido, correoelectronico, telefono, tipocliente) VALUES("+
                    "'" + cliente.getNombre() + "','" + 
                    cliente.getApellido() + "','" + cliente.getCorreoElectronico() + "','" +
                    cliente.getTelefono() + "','" + cliente.getTipoCliente() + "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }  
    
    /**
     * Metodo sin retorno implementada para utilizar el boton de eleminar recorre la lista y elimina el ultimo registro 
     * de la tabla y la actualiza
     */
    public void deleteCliente(){
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "DELETE FROM clientes\n" +
                         "WHERE id = (SELECT id FROM clientes ORDER BY id DESC LIMIT 1);";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }  
}
