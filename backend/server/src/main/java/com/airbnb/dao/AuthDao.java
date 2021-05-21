package com.airbnb.dao;

import com.airbnb.datasource.SessionDataSource;
import org.springframework.stereotype.Repository;

@Repository
public class AuthDao {
    private final SessionDataSource sessionDataSource;

    public AuthDao(SessionDataSource sessionDataSource) {
        this.sessionDataSource = sessionDataSource;
    }
}
