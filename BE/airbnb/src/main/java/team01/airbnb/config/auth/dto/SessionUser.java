package team01.airbnb.config.auth.dto;

import lombok.Getter;
import team01.airbnb.domain.User;

import java.io.Serializable;

@Getter
public class SessionUser implements Serializable {
    private String username;
    private String email;

    public SessionUser(User user) {
        this.username = user.getUsername();
        this.email = user.getEmail();
    }
}
