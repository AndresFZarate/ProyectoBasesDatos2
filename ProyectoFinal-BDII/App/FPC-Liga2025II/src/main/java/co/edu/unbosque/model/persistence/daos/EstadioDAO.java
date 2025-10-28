package co.edu.unbosque.model.persistence.daos;

import co.edu.unbosque.model.entities.Estadio;

import java.util.List;

public class EstadioDAO implements GenericDAO <Estadio, Integer> {

    @Override
    public boolean insert(Estadio estadio) {
        return false;
    }

    @Override
    public List<Estadio> getAll() {
        return List.of();
    }

    @Override
    public Estadio getById(Integer integer) {
        return null;
    }

    @Override
    public boolean update(Estadio estadio) {
        return false;
    }

    @Override
    public boolean deleteById(Integer integer) {
        return false;
    }
}
