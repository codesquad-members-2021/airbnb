package com.airbnb.service;

import com.airbnb.dao.TokenDao;
import com.airbnb.dto.AccessTokenResponse;
import com.airbnb.dto.UserDto;
import com.airbnb.exception.AuthenticationException;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    private final TokenDao tokenDao;

    public AuthService(TokenDao tokenDao) {
        this.tokenDao = tokenDao;
    }

    public void save(UserDto userDto, AccessTokenResponse accessTokenResponse) {
        tokenDao.save(userDto.toUser(), accessTokenResponse.toToken());
    }

    public void authenticate(UserDto userDto) {
        tokenDao.findByUser(userDto.toUser())
                .orElseThrow(() -> new AuthenticationException("로그인하지 않은 유저입니다."));
    }
}
