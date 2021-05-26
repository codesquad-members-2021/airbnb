package com.codesquad.airbnb.repository;

import java.util.List;
import java.util.Optional;

public interface JdbcRepository<T> {

    Optional<T> findById(Long id);

    List<T> findAll();
}
