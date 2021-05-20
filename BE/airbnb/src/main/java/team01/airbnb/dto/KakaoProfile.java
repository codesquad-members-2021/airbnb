package team01.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class KakaoProfile {
    public Integer id;

    @JsonProperty(value = "connected_at")
    public String connectedAt;

    public Properties properties;

    @JsonProperty(value = "kakao_account")
    public KakaoAccount kakaoAccount;

    @Data
    public class Properties {
        public String nickname;

        @JsonProperty(value = "thumbnail_image")
        public String thumbnailImage;

        @JsonProperty(value = "profile_image")
        public String profileImage;
    }

    @Data
    public class KakaoAccount {
        @JsonProperty(value = "profile_needs_agreement")
        public Boolean profileNeedsAgreement;

        public Profile profile;

        @JsonProperty(value = "has_email")
        public Boolean hasEmail;

        @JsonProperty(value = "email_needs_agreement")
        public Boolean emailNeedsAgreement;

        @JsonProperty(value = "is_email_valid")
        public Boolean isEmailValid;

        @JsonProperty(value = "is_email_verified")
        public Boolean isEmailVerified;

        public String email;

        @Data
        public class Profile {
            public String nickname;

            @JsonProperty(value = "thumbnail_image_url")
            public String thumbnailImageUrl;

            @JsonProperty(value = "profile_image_url")
            public String profileImageUrl;

            @JsonProperty(value = "is_default_image")
            public Boolean isDefaultImage;
        }
    }
}
