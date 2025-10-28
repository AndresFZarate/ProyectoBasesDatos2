package co.edu.unbosque.model.persistence.daos;

import co.edu.unbosque.model.entities.Equipo;

import java.util.List;

public class EquipoDAO implements GenericDAO <Equipo, String>{

    @Override
    public boolean insert(Equipo equipo) {
        return false;
    }

    @Override
    public List<Equipo> getAll() {
        return List.of();
    }

    @Override
    public Equipo getById(String s) {
        return null;
    }

    @Override
    public boolean update(Equipo equipo) {
        return false;
    }

    @Override
    public boolean deleteById(String s) {
        return false;
    }
}
