package co.edu.unbosque.model.persistence.daos;

import co.edu.unbosque.model.entities.Partido;

import java.util.List;

public class PartidoDAO implements GenericDAO <Partido, String> {

    @Override
    public boolean insert(Partido partido) {
        return false;
    }

    @Override
    public List<Partido> getAll() {
        return List.of();
    }

    @Override
    public Partido getById(String s) {
        return null;
    }

    public Partido getByLocal(String local){
        return null;
    }

    public Partido getByVisita(String visita){
        return null;
    }

    @Override
    public boolean update(Partido partido) {
        return false;
    }

    @Override
    public boolean deleteById(String s) {
        return false;
    }
}
