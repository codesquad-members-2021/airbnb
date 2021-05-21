package com.enolj.airbnb.service;

import com.enolj.airbnb.authorization.GitHubOAuth;
import com.enolj.airbnb.authorization.OAuth;
import com.enolj.airbnb.domain.user.User;
import com.enolj.airbnb.domain.user.UserRepository;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.exception.ErrorMessage;
import com.enolj.airbnb.exception.TokenException;
import com.enolj.airbnb.web.dto.EmailDTO;
import com.enolj.airbnb.web.dto.TokenDTO;
import com.enolj.airbnb.web.dto.UserInfoDTO;
import com.enolj.airbnb.web.dto.UserResponseDTO;
import com.enolj.airbnb.web.utils.GitHubType;
import com.enolj.airbnb.web.utils.JwtUtil;
import org.springframework.stereotype.Service;

import static com.enolj.airbnb.domain.user.User.createUser;
import static com.enolj.airbnb.web.dto.UserResponseDTO.createUserResponseDTO;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final OAuth gitHubOAuth;

    public UserService(UserRepository userRepository, GitHubOAuth gitHubOAuth) {
        this.userRepository = userRepository;
        this.gitHubOAuth = gitHubOAuth;
    }

    public UserResponseDTO login(String code, GitHubType gitHubType) {
        TokenDTO tokenDTO = tokenRequestApi(code, gitHubType);
        UserInfoDTO userInfoDTO = userInfoRequestApi(tokenDTO.getAccess_token());
        EmailDTO emailDTO = emailRequestApi(tokenDTO.getAccess_token());
        if (verifyUser(userInfoDTO.getLogin())) {
            User user = findByUserId(userInfoDTO.getLogin());
            user.update(userInfoDTO, emailDTO, tokenDTO);
            return createUserResponseDTO(userRepository.save(user), JwtUtil.createToken(user.getUserId()));
        }
        User user = createUser(userInfoDTO, emailDTO, tokenDTO);
        return createUserResponseDTO(userRepository.save(user), JwtUtil.createToken(user.getUserId()));
    }

    public void logout(String authorization) {
        String userId = JwtUtil.getUserIdFromToken(getTokenFromAuthorization(authorization));
        User user = findByUserId(userId);
        user.removeToken();
        userRepository.save(user);
    }

    private String getTokenFromAuthorization(String authorization) {
        String[] authArray = authorization.split(" ");
        if (authArray.length < 2 || !authArray[0].equals("Beare")) {
            throw new TokenException(ErrorMessage.INVALID_TOKEN);
        }
        return authArray[1];
    }

    private TokenDTO tokenRequestApi(String code, GitHubType gitHubType) {
        return gitHubOAuth.getTokenAPI(code, gitHubType);
    }

    private UserInfoDTO userInfoRequestApi(String token) {
        return gitHubOAuth.getUserInfoAPI(token);
    }

    private EmailDTO emailRequestApi(String token) {
       return gitHubOAuth.getEmailAPI(token);
    }

    private boolean verifyUser(String userId) {
        return userRepository.findByUserId(userId).isPresent();
    }

    private User findByUserId(String userId) {
        return userRepository.findByUserId(userId).orElseThrow(EntityNotFoundException::new);
    }
}
