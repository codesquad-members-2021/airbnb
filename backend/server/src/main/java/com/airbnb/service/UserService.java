package com.airbnb.service;

import com.airbnb.dao.UserDao;
import com.airbnb.dto.UserDto;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final UserDao userDao;

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public void save(UserDto userDto) {
        userDao.save(userDto.toUser());
    }
}
