
package Modelo;
/**
 * Clase implentada para especificar propiedades que seran utilizadas para clientes 
 * @author Otra (Nueva)
 */
public class Cliente {
    private int id;
    private static int sigIdCliente = 1;
    private String nombre;
    private String apellido;
    private String correoElectronico;
    private String telefono;
    private String tipoCliente;

    /**
     * Constructor Cliente
     * asignacion default asigna el valor que le corresponda a la propiedad id
     */
    public Cliente() {
        this.id = sigIdCliente++;
    }
    
    /**
     * Segundo constructor para asignar valores a las propiedades
     * @param nombre
     * @param apellido
     * @param correoElectronico
     * @param telefono
     * @param tipoCliente
     */
    public Cliente( String nombre, String apellido, String correoElectronico, String telefono, String tipoCliente) {
        this.id = sigIdCliente++;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correoElectronico = correoElectronico;
        this.telefono = telefono;
        this.tipoCliente = tipoCliente;
    }
    
    /**
     * Metodos de getter y setter para acceder a las propiedades
     * @return
     */
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTipoCliente() {
        return tipoCliente;
    }

    public void setTipoCliente(String tipoCliente) {
        this.tipoCliente = tipoCliente;
    } 
}
