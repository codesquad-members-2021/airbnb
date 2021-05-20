package team01.airbnb.domain;

import lombok.*;
import team01.airbnb.dto.KakaoProfile;
import team01.airbnb.dto.RoleType;

import java.time.LocalDate;

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
    private LocalDate createDate;

    public static User fromKakaoProfile(KakaoProfile kakaoProfile) {
        return User.builder()
                .username(kakaoProfile.getProperties().getNickname())
                .email(kakaoProfile.getKakaoAccount().getEmail())
                .role(RoleType.USER)
                .build();
    }
}
