package com.codesquad.airbnb.web.service.users;

import com.codesquad.airbnb.web.domain.User;
import com.codesquad.airbnb.web.domain.UserRepository;
import com.codesquad.airbnb.web.dto.UserWithToken;
import com.codesquad.airbnb.web.service.oauth.TokenService;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final TokenService tokenService;
    private final UserDtoConverter userDtoConverter;

    public UserService(UserRepository userRepository, TokenService tokenService, UserDtoConverter userDtoConverter) {
        this.userRepository = userRepository;
        this.tokenService = tokenService;
        this.userDtoConverter = userDtoConverter;
    }

    public UserWithToken processLogin(User loginRequester) {
        User user = createIfNotFound(loginRequester);
        updateWithNewToken(user);
        return userDtoConverter.userToUserWithToken(user);
    }

    private User createIfNotFound(User user) {
        Optional<User> optionalUser = userRepository.findUserByAuthenticatedByAndOauthId(user.getAuthenticatedBy(), user.getOauthId());
        if (optionalUser.isPresent()) {
            user = optionalUser.get();
        } else {
            save(user);
        }
        return user;
    }

    private void updateWithNewToken(User user) {
        String token = tokenService.createToken(user.getId());
        user.updateToken(token);
        userRepository.updateAccessToken(user.getId(), user.getAccessToken());
    }

    private User save(User user) {
        return userRepository.save(user);
    }
}
