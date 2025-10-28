package co.edu.unbosque.model;

import org.modelmapper.ModelMapper;

import java.util.List;
import java.util.stream.Collectors;

public class Mapper {

    private static final ModelMapper mp = new ModelMapper();

    public static <S, T> T map(S source, Class<T> targetClass) {
        return mp.map(source, targetClass);
    }

    public static <S, T> List<T> mapList(List<S> sourceList, Class<T> targetClass) {
        return sourceList.stream()
                .map(element -> mp.map(element, targetClass))
                .collect(Collectors.toList());
    }
}