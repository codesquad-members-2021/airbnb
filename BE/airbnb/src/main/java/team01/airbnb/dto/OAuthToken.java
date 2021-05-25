package team01.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class OAuthToken {

    @JsonProperty(value = "access_token")
    private String accessToken;

    @JsonProperty(value = "token_type")
    private String tokenType;

    @JsonProperty(value = "refresh_token")
    private String refreshToken;

    @JsonProperty(value = "expires_in")
    private int expiresIn;

    private String scope;

    @JsonProperty(value = "refresh_token_expires_in")
    private int refreshTokenExpiresIn;
}
