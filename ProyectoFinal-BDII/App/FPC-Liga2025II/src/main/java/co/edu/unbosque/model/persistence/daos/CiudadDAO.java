package co.edu.unbosque.model.persistence.daos;

import co.edu.unbosque.model.entities.Ciudad;

import java.util.List;

public class CiudadDAO implements GenericDAO <Ciudad, Integer> {

    @Override
    public boolean insert(Ciudad ciudad) {
        return false;
    }

    @Override
    public List<Ciudad> getAll() {
        return List.of();
    }

    @Override
    public Ciudad getById(Integer i) {
        return null;
    }

    @Override
    public boolean update(Ciudad ciudad) {
        return false;
    }

    @Override
    public boolean deleteById(Integer i) {
        return false;
    }
}