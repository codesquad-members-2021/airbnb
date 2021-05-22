package com.airbnb.dao.datasource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class PersistentDataSource extends DataSource {
    // FIXME: 인프라를 구축해서 RDS 인스턴스 url 로 바꿔야한다.
    @Value("${persistent.datasource.url}")
    private String url;

    @Value("${persistent.datasource.username}")
    private String username;

    @Value("${persistent.datasource.password}")
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
