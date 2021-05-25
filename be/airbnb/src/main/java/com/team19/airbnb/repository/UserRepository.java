package com.team19.airbnb.repository;

import com.team19.airbnb.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
}
