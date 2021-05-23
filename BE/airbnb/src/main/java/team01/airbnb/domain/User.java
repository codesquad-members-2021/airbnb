package team01.airbnb.domain;

import lombok.*;
import team01.airbnb.dto.RoleType;
import team01.airbnb.dto.SocialProfile;

@Builder
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class User {

    private Long id;
    private String username;
    private String email;
    private RoleType role; // ADMIN, USER
    private String profileImage;

    public static User fromSocialProfile(SocialProfile socialProfile) {
        return User.builder()
                .username(socialProfile.getUsername())
                .email(socialProfile.getEmail())
                .role(RoleType.USER)
                .build();
    }

}
