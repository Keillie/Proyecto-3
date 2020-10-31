
package Modelo;
/**
 * Clase ItemOrden representa el cálculo de un producto que forma parte de la orden
 */
class ItemOrden {
    //Propiedades
    private int noLinea; //que será un número correlativo de la orden
    private Producto producto;
    private int cantidad;

    public ItemOrden(Producto producto, int cantidad) {
        this.producto = producto;
        this.cantidad = cantidad;
    }
   
    
    /**
     * Constructor de ItemOrden con sus siguientes paramentros
     * @param noLinea que será un número correlativo de la orden
     * @param cantidad numero de productos
     * @param producto
     */
    public ItemOrden(int noLinea, Producto producto, int cantidad) {
        this.noLinea = noLinea;
        this.producto = producto;
        this.cantidad = cantidad;
    }

   

    /**
     * Getter y setter implementados para utilizar las variables en el programa
     * @return 
     */
    public int getNoLinea() {
        return noLinea;
    }

    public void setNoLinea(int noLinea) {
        this.noLinea = noLinea;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }
    
    
}
