package com.codesquad.airbnb.repository;

import java.util.List;
import java.util.Optional;

public interface JdbcRepository<T> {

    Optional<T> findById(Long id);

    List<T> findAll();

    void insert(T t);

    void update(T t, Long id);

    void delete(Long id);
}
