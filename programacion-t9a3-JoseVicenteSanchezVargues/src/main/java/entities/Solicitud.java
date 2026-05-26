package entities;

public class Solicitud {

    private String prueba;
    private int cantidad;
    private String estado;
    private String motivo;

    public String getPrueba() {
        return prueba;
    }

    public void setPrueba(String prueba) {
        this.prueba = prueba;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public Solicitud(int cantidad, String prueba, String estado, String motivo) {
        this.cantidad = cantidad;
        this.prueba = prueba;
        this.estado = estado;
        this.motivo = motivo;
    }

    public Solicitud(int cantidad, String prueba, String estado) {
        this.cantidad = cantidad;
        this.prueba = prueba;
        this.estado = estado;
    }

    public Solicitud() {}
}
