package com.codesquad.airbnb.web.config;

import com.codesquad.airbnb.web.domain.UserRepository;
import com.codesquad.airbnb.web.service.users.UserDAO;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RepositoryConfig {

    private final UserDAO userDAO;

    public RepositoryConfig(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Bean
    public UserRepository userRepository() {
        return userDAO;
    }
}
