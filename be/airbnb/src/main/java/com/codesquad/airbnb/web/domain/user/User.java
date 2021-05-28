package com.codesquad.airbnb.web.domain.user;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;

@Getter
@Setter
@Builder
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class User {
    @Id
    private int id;
    private String nickname;
    private String name;
    private String profileImage;
    private String accessToken;
    private String oauthId;
    private OAuthAuthenticater authenticatedBy;

    public void updateToken(String accessToken) {
        this.accessToken = accessToken;
    }
}
