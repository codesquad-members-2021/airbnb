package com.enolj.airbnb.service;

import com.enolj.airbnb.authorization.GitHubOAuth;
import com.enolj.airbnb.authorization.OAuth;
import com.enolj.airbnb.domain.user.User;
import com.enolj.airbnb.domain.user.UserDAO;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.exception.ErrorMessage;
import com.enolj.airbnb.exception.TokenException;
import com.enolj.airbnb.web.dto.EmailDTO;
import com.enolj.airbnb.web.dto.TokenDTO;
import com.enolj.airbnb.web.dto.UserInfoDTO;
import com.enolj.airbnb.web.dto.UserResponseDTO;
import com.enolj.airbnb.web.utils.JwtUtil;
import org.springframework.stereotype.Service;

import static com.enolj.airbnb.domain.user.User.createUser;
import static com.enolj.airbnb.web.dto.UserResponseDTO.createUserResponseDTO;

@Service
public class UserService {

    private final UserDAO userDAO;
    private final OAuth gitHubOAuth;

    public UserService(UserDAO userDAO, GitHubOAuth gitHubOAuth) {
        this.userDAO = userDAO;
        this.gitHubOAuth = gitHubOAuth;
    }

    public UserResponseDTO login(String code, int typeCode) {
        TokenDTO tokenDTO = gitHubOAuth.getToken(code, typeCode);
        UserInfoDTO userInfoDTO = gitHubOAuth.getUserInfo(tokenDTO.getAccessToken());
        EmailDTO emailDTO = gitHubOAuth.getEmail(tokenDTO.getAccessToken());
        if (verifyUser(userInfoDTO.getUserId())) {
            User user = findByUserId(userInfoDTO.getUserId());
            user.update(userInfoDTO, emailDTO, tokenDTO);
            userDAO.save(user);
            return createUserResponseDTO(user, JwtUtil.createToken(user.getUserId()));
        }
        User user = createUser(userInfoDTO, emailDTO, tokenDTO);
        userDAO.save(user);
        return createUserResponseDTO(user, JwtUtil.createToken(user.getUserId()));
    }

    public void logout(String authorization) {
        User user = getUserFromAuthorization(userDAO, authorization);
        user.removeToken();
        userDAO.save(user);
    }

    private boolean verifyUser(String userId) {
        return userDAO.findByUserId(userId).isPresent();
    }

    private User findByUserId(String userId) {
        return userDAO.findByUserId(userId).orElseThrow(EntityNotFoundException::new);
    }

    public static User getUserFromAuthorization(UserDAO userDAO, String authorization) {
        User user = userDAO.findByUserId(JwtUtil.getUserIdFromToken(JwtUtil.getTokenFromAuthorization(authorization))).orElseThrow(EntityNotFoundException::new);
        if (user.getToken() == null) {
            throw new TokenException(ErrorMessage.INVALID_TOKEN);
        }
        return user;
    }
}
