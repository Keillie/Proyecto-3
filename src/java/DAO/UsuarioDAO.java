
package DAO;

import Modelo.Usuario;
import Modelo.Validar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import utils.VariablesGlobales;

/**
 * Clase implementada para guardar usuarios y contrasenias de los trabajadores de Auto Partes 
 * que tienen acceso a todo el sistema de clientes, productos y ordenes
 * Hereda interfaz
 * @author Otra (Nueva)
 */
public class UsuarioDAO implements Validar {
    //Variables necesarias
    Connection conn;
    VariablesGlobales cn = new VariablesGlobales();
    PreparedStatement ps;
    ResultSet rs;
    int resultado;
    
    //Contador igualado a 0
    int result = 0;
    /**
     * Hereda interfaz
     * @param u se hereda el parametro u de Usuario
     * @return metodo con retorno
     */
    @Override
    public int validar(Usuario u) {
        String sql="SELECT * FROM usuario where Usuario=? and Password=?";
        try{
            //conn = cn.getConnection();
            //conn.VariablesGlobales();
            //Connection conn = VariablesGlobales.cn.prepareStatement();
            ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUsuarios());
            ps.setString(2, u.getContrasenia());
            rs = ps.executeQuery();
            while(rs.next()){
                result = result + 1;//Recibe parametros y los iguala
                u.setUsuarios(rs.getString("Usuario"));
                u.setContrasenia(rs.getString("Password"));
            }
            if(result == 1){
                return 1;
            } else{
                return 0;
            }
        }catch(Exception e){
            return 0;
        }
    }
    
}
