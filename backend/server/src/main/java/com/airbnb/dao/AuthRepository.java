package com.airbnb.dao;

import com.airbnb.domain.Auth;
import org.springframework.data.repository.CrudRepository;

/**
 * TODO: Redis 어려워서 임시로 ORM 으로 구현
 * 나중에 RedisTemplate 으로 수정해야함
 */
public interface AuthRepository extends CrudRepository<Auth, String> {
}
