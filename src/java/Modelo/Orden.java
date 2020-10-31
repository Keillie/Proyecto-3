
package Modelo;

import java.sql.Date;
/**
 * Esta clase representa la orden de compra de algun cliente
 */
public class Orden {
    //Propiedades con su tipo de dato que seran utilizadas
    int id;
    public Cliente cliente;
    public ItemOrden item2;
    public String proveedor;
    public ItemOrden item1;
    public String fechaOrden;
    public double precioEnvio;
    public double total;
    public String tipoEnvio;
    public String estado;
    public static int sigIdOrden; //Llevar el orden correlativo id de la orden
    public String diasEnvio;
    public String nombreProducto;
    public double precioUnitario; //Llevar el orden correlativo id de la orden
    public int cantidad;
    
    /**
     * Constructor inicializamos propiedades
     */
    public Orden() {
        this.id = sigIdOrden++;
        this.fechaOrden = fechaOrden;
        this.total = 0.0;
    }
    
 

    /**
     * Constructor con parametros de las siguientes propiedades
     * @param cliente hereda las propiedades de cliente
     * @param item1
     * @param item2
     * @param fechaOrden
     * @param precioEnvio
     * @param total
     * @param tipoEnvio
     * @param estado
     * @param diasEnvio 
     */
    public Orden(String proveedor, String nombreProducto, double precioUnitario, int cantidad, String fechaOrden,  String estado, String diasEnvio, String tipoEnvio) {
        this.id = sigIdOrden++;
        this.proveedor = proveedor;
        this.nombreProducto = nombreProducto;
        this.precioUnitario = precioUnitario;
        this.cantidad = cantidad;
        this.fechaOrden = fechaOrden;
        this.estado = estado;
        this.diasEnvio = diasEnvio;
        this.tipoEnvio = tipoEnvio;
        this.total = total;
    }

    /**
     *
     * @param cliente
     * @param fechaOrden
     */
    public Orden(Cliente cliente, Date fechaOrden) {
        this.cliente = cliente;
        //this.fechaOrden = fechaOrden;
    }
    
    public int getId(){        return id;

    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

   
    public String getFechaOrden() {
        return fechaOrden;
    }

    public void setFechaOrden(String fechaOrden) {
        this.fechaOrden = fechaOrden;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getTipoEnvio() {
        return tipoEnvio;
    }

    public void setTipoEnvio(String tipoEnvio) {
        this.tipoEnvio = tipoEnvio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getDiasEnvio() {
        return diasEnvio;
    }

    /**
     * Generacion de getter y setter para realizar el manejo de las propiedades de orden
     * @return 
     */
    public void setDiasEnvio(String diasEnvio) {
        this.diasEnvio = diasEnvio;
    }

    /**
     * Metodo que calcula el monto total de la orden
     *  se calculará en base a los precios de los productos y el descuento si es que aplica
     * @return
     */
    public void getTotalOrden() {
        //falta implemtar metodo
    }
    
}
