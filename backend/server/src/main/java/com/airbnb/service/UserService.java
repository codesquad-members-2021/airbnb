package com.airbnb.service;

import com.airbnb.dao.UserRepository;
import com.airbnb.dto.UserDto;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void save(UserDto userDto) {
        userRepository.save(userDto.toUser());
    }
}
