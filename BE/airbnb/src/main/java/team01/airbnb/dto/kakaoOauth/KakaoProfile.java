package team01.airbnb.dto.kakaoOauth;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import team01.airbnb.dto.SocialProfile;

@Data
public class KakaoProfile implements SocialProfile {
    private Integer id;

    @JsonProperty(value = "connected_at")
    private String connectedAt;

    private Properties properties;

    @JsonProperty(value = "kakao_account")
    private KakaoAccount kakaoAccount;

    @Override
    public String getUsername() {
        return properties.nickname;
    }

    @Override
    public String getEmail() {
        return kakaoAccount.email;
    }

    @Data
    public class Properties {
        private String nickname;

        @JsonProperty(value = "thumbnail_image")
        private String thumbnailImage;

        @JsonProperty(value = "profile_image")
        private String profileImage;
    }

    @Data
    public class KakaoAccount {
        @JsonProperty(value = "profile_needs_agreement")
        private Boolean profileNeedsAgreement;

        private Profile profile;

        @JsonProperty(value = "has_email")
        private Boolean hasEmail;

        @JsonProperty(value = "email_needs_agreement")
        private Boolean emailNeedsAgreement;

        @JsonProperty(value = "is_email_valid")
        private Boolean isEmailValid;

        @JsonProperty(value = "is_email_verified")
        private Boolean isEmailVerified;

        private String email;

        @Data
        public class Profile {
            private String nickname;

            @JsonProperty(value = "thumbnail_image_url")
            private String thumbnailImageUrl;

            @JsonProperty(value = "profile_image_url")
            private String profileImageUrl;

            @JsonProperty(value = "is_default_image")
            private Boolean isDefaultImage;
        }
    }
}
