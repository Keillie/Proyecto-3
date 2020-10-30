
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class VariablesGlobales {
    
    public static final String DRIVER_DB = "org.postgresql.Driver";
    public static final String URL_DB ="jdbc:postgresql://localhost/autoPartesdb";
    public static final String USER_DB = "postgres";
    public static final String PASSWORD_DB = "123456";
    public static Connection conn;
    static{
        try {
            Class.forName(DRIVER_DB);
            conn = DriverManager.getConnection(URL_DB, USER_DB, PASSWORD_DB);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    } 
    /*
    Connection con;
    public Connection getConnection(){
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://localhost/autoPartesdb", "postgres", "123456");
        }catch(Exception e){
            
        }
        return con;
    }*/
}
