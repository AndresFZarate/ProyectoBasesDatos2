package co.edu.unbosque.model.entities;

import java.util.Date;

public class Equipo {

    //Primary Key
    private String idEquipo;

    private String nombre;
    private Date fundacion;
    private int titulosLiga;
    private int titulosCopa;
    private int titulosSuperliga;

    //Foreign key references idDT
    private int dt;

    public Equipo(){}

    public String getIdEquipo() {
        return idEquipo;
    }

    public void setIdEquipo(String idEquipo) {
        this.idEquipo = idEquipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFundacion() {
        return fundacion;
    }

    public void setFundacion(Date fundacion) {
        this.fundacion = fundacion;
    }

    public int getTitulosLiga() {
        return titulosLiga;
    }

    public void setTitulosLiga(int titulosLiga) {
        this.titulosLiga = titulosLiga;
    }

    public int getTitulosCopa() {
        return titulosCopa;
    }

    public void setTitulosCopa(int titulosCopa) {
        this.titulosCopa = titulosCopa;
    }

    public int getTitulosSuperliga() {
        return titulosSuperliga;
    }

    public void setTitulosSuperliga(int titulosSuperliga) {
        this.titulosSuperliga = titulosSuperliga;
    }

    public int getDt() {
        return dt;
    }

    public void setDt(int dt) {
        this.dt = dt;
    }
}
