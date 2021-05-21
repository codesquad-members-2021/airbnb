package com.airbnb.dao;

import com.airbnb.datasource.PersistentDataSource;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
    private final PersistentDataSource persistentDataSource;

    public UserDao(PersistentDataSource persistentDataSource) {
        this.persistentDataSource = persistentDataSource;
    }
}
