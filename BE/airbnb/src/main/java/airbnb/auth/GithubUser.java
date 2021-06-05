package airbnb.auth;

import airbnb.domain.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class GithubUser {
    private String name;

    private String email;

    @JsonProperty("login")
    private String githubId;

    @JsonProperty("avatar_url")
    private String avatarUrl;

    public User createUser() {
        return User.builder()
                .name(name)
                .email(email)
                .githubId(githubId)
                .profileImage(avatarUrl)
                .build();
    }
}
