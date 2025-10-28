package co.edu.unbosque.model.persistence.daos;

import co.edu.unbosque.model.entities.DirectorTecnico;

import java.util.List;

public class DirectorTecnicoDAO implements GenericDAO <DirectorTecnico, Integer> {

    @Override
    public boolean insert(DirectorTecnico directorTecnico) {
        return false;
    }

    @Override
    public List<DirectorTecnico> getAll() {
        return List.of();
    }

    @Override
    public DirectorTecnico getById(Integer integer) {
        return null;
    }

    @Override
    public boolean update(DirectorTecnico directorTecnico) {
        return false;
    }

    @Override
    public boolean deleteById(Integer integer) {
        return false;
    }
}
