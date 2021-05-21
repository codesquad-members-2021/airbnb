package com.airbnb.service;

import com.airbnb.domain.User;
import com.airbnb.dto.AccessTokenResponse;
import com.airbnb.dto.UserDto;
import com.airbnb.exception.AuthenticationException;
import com.airbnb.repository.LoginRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    private final LoginRepository loginRepository;

    public UserService(LoginRepository loginRepository) {
        this.loginRepository = loginRepository;
    }

    public void saveLoggedInUser(UserDto userDto, AccessTokenResponse accessTokenResponse) {
        User user = userDto.toUser(accessTokenResponse);
        loginRepository.save(user);
    }

    public void authenticate(UserDto userDto) {
        loginRepository.findByName(userDto.getName())
                .orElseThrow(() -> new AuthenticationException("로그인하지 않은 유저입니다."));
    }
}
