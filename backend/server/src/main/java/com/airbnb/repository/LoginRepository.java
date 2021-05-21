package com.airbnb.repository;

import com.airbnb.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface LoginRepository extends CrudRepository<User, String> {
    Optional<User> findByName(String name);
}
