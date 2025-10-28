package co.edu.unbosque.model.persistence.daos;

import co.edu.unbosque.model.entities.Jugador;

import java.util.List;

public class JugadorDAO implements GenericDAO <Jugador, Integer> {

    @Override
    public boolean insert(Jugador jugador) {
        return false;
    }

    @Override
    public List<Jugador> getAll() {
        return List.of();
    }

    @Override
    public Jugador getById(Integer integer) {
        return null;
    }

    @Override
    public boolean update(Jugador jugador) {
        return false;
    }

    @Override
    public boolean deleteById(Integer integer) {
        return false;
    }
}
