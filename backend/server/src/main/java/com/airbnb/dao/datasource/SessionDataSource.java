package com.airbnb.dao.datasource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class SessionDataSource extends DataSource {
    // FIXME: 인프라를 구축해서 Redis url 로 바꿔야한다.
    @Value("${session.datasource.url}")
    private String url;

    @Value("${session.datasource.username}")
    private String username;

    @Value("${session.datasource.password}")
    private String password;

    @Override
    String getUrl() {
        return url;
    }

    @Override
    String getUsername() {
        return username;
    }

    @Override
    String getPassword() {
        return password;
    }
}
