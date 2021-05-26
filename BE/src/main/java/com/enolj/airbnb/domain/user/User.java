package com.enolj.airbnb.domain.user;

import com.enolj.airbnb.web.dto.EmailDTO;
import com.enolj.airbnb.web.dto.TokenDTO;
import com.enolj.airbnb.web.dto.UserInfoDTO;
import org.springframework.data.annotation.Id;

public class User {

    @Id
    private Long id;
    private String userId;
    private String email;
    private String name;
    private String token;

    public User() {}

    public User(String userId, String email, String name, String token) {
        this.userId = userId;
        this.email = email;
        this.name = name;
        this.token = token;
    }

    public static User createUser(UserInfoDTO userInfoDTO, EmailDTO emailDTO, TokenDTO tokenDTO) {
        return new User(userInfoDTO.getUserId(), emailDTO.getEmail(), userInfoDTO.getName(), tokenDTO.getAccessToken());
    }

    public void update(UserInfoDTO userInfoDTO, EmailDTO emailDTO, TokenDTO tokenDTO) {
        this.userId = userInfoDTO.getUserId();
        this.email = emailDTO.getEmail();
        this.name = userInfoDTO.getName();
        this.token = tokenDTO.getAccessToken();
    }

    public void removeToken() {
        this.token = null;
    }

    public boolean verifyToken(String token) {
        return this.token.equals(token);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", userId='" + userId + '\'' +
                ", token='" + token + '\'' +
                '}';
    }
}
