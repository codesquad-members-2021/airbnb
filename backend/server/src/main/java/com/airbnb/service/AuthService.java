package com.airbnb.service;

import com.airbnb.domain.Auth;
import com.airbnb.dto.AccessTokenResponse;
import com.airbnb.dto.UserDto;
import com.airbnb.exception.AuthenticationException;
import com.airbnb.repository.AuthRepository;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    private final AuthRepository authRepository;

    public AuthService(AuthRepository authRepository) {
        this.authRepository = authRepository;
    }

    public void save(UserDto userDto, AccessTokenResponse accessTokenResponse) {
        Auth auth = Auth.from(userDto.toUser(), accessTokenResponse.toToken());
        authRepository.save(auth);
    }

    public void authenticate(UserDto userDto) {
        authRepository.findById(userDto.getLogin())
                .orElseThrow(() -> new AuthenticationException("로그인하지 않은 유저입니다."));
    }
}
