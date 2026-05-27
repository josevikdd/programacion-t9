package entities;

public class Alquiler {

    private String nombre;
    private int diasAlquiler;
    private String edadCliente;
    private String formaPago;
    private String especificacionesExtra;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDiasAlquiler() {
        return diasAlquiler;
    }

    public void setDiasAlquiler(int diasAlquiler) {
        this.diasAlquiler = diasAlquiler;
    }

    public String getEdadCliente() {
        return edadCliente;
    }

    public void setEdadCliente(String edadCliente) {
        this.edadCliente = edadCliente;
    }

    public String getFormaPago() {
        return formaPago;
    }

    public void setFormaPago(String formaPago) {
        this.formaPago = formaPago;
    }

    public String getEspecificacionesExtra() {
        return especificacionesExtra;
    }

    public void setEspecificacionesExtra(String especificacionesExtra) {
        this.especificacionesExtra = especificacionesExtra;
    }

    public Alquiler(String nombre, int diasAlquiler, String edadCliente, String formaPago, String especificacionesExtra) {
        this.nombre = nombre;
        this.diasAlquiler = diasAlquiler;
        this.edadCliente = edadCliente;
        this.formaPago = formaPago;
        this.especificacionesExtra = especificacionesExtra;
    }

    public Alquiler() {}
}
