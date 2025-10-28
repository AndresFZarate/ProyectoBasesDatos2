package co.edu.unbosque.model.persistence.daos;

import java.util.List;

public interface GenericDAO <E, S>{

    public boolean insert(E e);
    public List<E> getAll();
    public E getById(S s);
    public boolean update(E e);
    public boolean deleteById(S s);
}