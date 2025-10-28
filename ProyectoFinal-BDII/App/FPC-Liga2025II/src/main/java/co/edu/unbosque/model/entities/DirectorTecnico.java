package co.edu.unbosque.model.entities;

public class DirectorTecnico {

    private int idDirectorTecnico; //Primary key
    private String primerNombre;
    private String primerApellido;
    private String nacionalidad;
    private String equipo; //Foreign key references idEquipo

    public DirectorTecnico (){}

    public int getIdDirectorTecnico() {
        return idDirectorTecnico;
    }

    public void setIdDirectorTecnico(int idDirectorTecnico) {
        this.idDirectorTecnico = idDirectorTecnico;
    }

    public String getPrimerNombre() {
        return primerNombre;
    }

    public void setPrimerNombre(String primerNombre) {
        this.primerNombre = primerNombre;
    }

    public String getPrimerApellido() {
        return primerApellido;
    }

    public void setPrimerApellido(String primerApellido) {
        this.primerApellido = primerApellido;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getEquipo() {
        return equipo;
    }

    public void setEquipo(String equipo) {
        this.equipo = equipo;
    }
}
