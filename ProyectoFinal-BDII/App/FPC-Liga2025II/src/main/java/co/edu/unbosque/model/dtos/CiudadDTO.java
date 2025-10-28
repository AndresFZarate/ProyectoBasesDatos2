package co.edu.unbosque.model.dtos;

public class CiudadDTO {

    private String idCiudad; //Primary Key
    private String nombre;

    public CiudadDTO(){}

    public String getIdCiudad() {
        return idCiudad;
    }

    public void setIdCiudad(String idCiudad) {
        this.idCiudad = idCiudad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}