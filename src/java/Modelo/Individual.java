
package Modelo;

/**
 * Subclase que hereda atributos y metodos de clase Cliente
 * @author Otra (Nueva)
 */
public class Individual extends Cliente{
    private String dpi;

    /**
     * constructor heredado de clase cliente
     */
    public Individual() {
    }

    /**
     * constructor y parametros heredados de la superclase
     * @param nombre
     * @param apellido
     * @param correoElectronico
     * @param telefono
     * @param tipoCliente
     */
    public Individual(String dpi, String nombre, String apellido, String correoElectronico, String telefono, String tipoCliente) {
        super(nombre, apellido, correoElectronico, telefono, tipoCliente);
        this.dpi = dpi;
    }

    /**
     * Gette y setter de de la variable dpi que perimitira su manejo
     * @return de la propiedad dpi
     */
    public String getDpi() {
        return dpi;
    }

    /**
     * Metodo que no posee retorno
     * @param dpi
     */
    public void setDpi(String dpi) {
        this.dpi = dpi;
    }
}
