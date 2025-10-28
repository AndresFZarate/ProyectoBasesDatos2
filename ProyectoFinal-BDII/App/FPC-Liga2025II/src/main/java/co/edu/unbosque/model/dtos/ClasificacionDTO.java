package co.edu.unbosque.model.dtos;

public class ClasificacionDTO {

    private String idEquipo; //PK-FK references idEquipo
    private int jugados;
    private int ganados;
    private int empatados;
    private int perdidos;
    private int golFavor;
    private int golContra;

    public ClasificacionDTO(){}

    public String getIdEquipo() {
        return idEquipo;
    }

    public void setIdEquipo(String idEquipo) {
        this.idEquipo = idEquipo;
    }

    public int getJugados() {
        return jugados;
    }

    public void setJugados(int jugados) {
        this.jugados = jugados;
    }

    public int getGanados() {
        return ganados;
    }

    public void setGanados(int ganados) {
        this.ganados = ganados;
    }

    public int getEmpatados() {
        return empatados;
    }

    public void setEmpatados(int empatados) {
        this.empatados = empatados;
    }

    public int getPerdidos() {
        return perdidos;
    }

    public void setPerdidos(int perdidos) {
        this.perdidos = perdidos;
    }

    public int getGolFavor() {
        return golFavor;
    }

    public void setGolFavor(int golFavor) {
        this.golFavor = golFavor;
    }

    public int getGolContra() {
        return golContra;
    }

    public void setGolContra(int golContra) {
        this.golContra = golContra;
    }
}
