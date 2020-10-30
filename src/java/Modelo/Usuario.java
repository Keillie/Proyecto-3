/**
 * Clase para realizar funciones de validaciones de usario
 */
package Modelo;


public class Usuario {
    int id;
    String usuarios;
    String contrasenia;

    /**
     * Constructor vacio
     */
    public Usuario() {
    }
    
    /**
     * Constructor creado con los siguientes parametros
     * @param id identificador
     * @param usuarios nombre de los usuarios para ingresar
     * @param contrasenia validacion de entrada
     */
    public Usuario(int id, String usuarios, String contrasenia) {
        this.id = id;
        this.usuarios = usuarios;
        this.contrasenia = contrasenia;
    }

    /**
     * Getter y setter para manejar los atributos que seran ingresados 
     * metodos con retorno y sin retorno
     * @return 
     */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(String usuarios) {
        this.usuarios = usuarios;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

}
