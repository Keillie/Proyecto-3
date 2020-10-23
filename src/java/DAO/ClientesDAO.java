
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
    public List<Cliente> getDBCarreras(){
        List<Cliente> carreras = new ArrayList<Cliente>();
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String consulta = " SELECT codigo, nombre"+
                              " FROM carreras";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                //carreras.add(new Cliente(rs.getInt("codigo"), rs.getString("nombre")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return carreras;
    }

    /**
    * Método sirve para persistir las carreras en la base de datos
    * @param carrera
    */
    public void saveCliente(Cliente cliente){
        /*
        try {
            Statement statement = VariablesGlobales.conn.createStatement();
            String dml = "INSERT INTO carreras(codigo,nombre) VALUES("+
                        cliente.getCodigo() + ",'" + cliente.getNombre() + "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        */
        
    }  
}
