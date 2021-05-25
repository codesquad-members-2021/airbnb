package com.codesquad.airbnb.web.config;

import com.codesquad.airbnb.web.domain.room.RoomRepository;
import com.codesquad.airbnb.web.domain.user.UserRepository;
import com.codesquad.airbnb.web.service.rooms.RoomDAO;
import com.codesquad.airbnb.web.service.users.UserDAO;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RepositoryConfig {

    private final UserDAO userDAO;
    private final RoomDAO roomDAO;

    public RepositoryConfig(UserDAO userDAO, RoomDAO roomDAO) {
        this.userDAO = userDAO;
        this.roomDAO = roomDAO;
    }

    @Bean
    public UserRepository userRepository() {
        return userDAO;
    }

    @Bean
    public RoomRepository roomRepository() {
        return roomDAO;
    }
}
