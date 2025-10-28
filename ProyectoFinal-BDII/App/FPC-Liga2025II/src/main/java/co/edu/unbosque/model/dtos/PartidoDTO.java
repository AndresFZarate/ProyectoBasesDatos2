package co.edu.unbosque.model.dtos;

import java.util.Date;

public class PartidoDTO {

    private String local; //PK-FK references idEquipo (Local)
    private String visita; //PK-FK references idEquipo (Visitante)
    private Date fecha;
    private int jornada;
    private int golLocal;
    private int golVisita;
    private int estadio; //FK references idEstadio

    public PartidoDTO(){}

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public String getVisita() {
        return visita;
    }

    public void setVisita(String visita) {
        this.visita = visita;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getJornada() {
        return jornada;
    }

    public void setJornada(int jornada) {
        this.jornada = jornada;
    }

    public int getGolLocal() {
        return golLocal;
    }

    public void setGolLocal(int golLocal) {
        this.golLocal = golLocal;
    }

    public int getGolVisita() {
        return golVisita;
    }

    public void setGolVisita(int golVisita) {
        this.golVisita = golVisita;
    }

    public int getEstadio() {
        return estadio;
    }

    public void setEstadio(int estadio) {
        this.estadio = estadio;
    }
}
