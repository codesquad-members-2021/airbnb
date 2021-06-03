package com.codesquad.airbnb.oauth;

import com.codesquad.airbnb.domain.User;

public class GoogleUser {

    public String id;
    public String email;
    public Boolean verifiedEmail;
    public String name;
    public String givenName;
    public String familyName;
    public String picture;
    public String locale;

    public GoogleUser() {
        // JSON 변환할 때 어떤 생성자로 변환해야 할지 모르기 때문에 기본생성자를 호출함. (그래서 필요)
    }

    public GoogleUser(String id, String email, Boolean verifiedEmail, String name, String givenName, String familyName, String picture, String locale) {
        this.id = id;
        this.email = email;
        this.verifiedEmail = verifiedEmail;
        this.name = name;
        this.givenName = givenName;
        this.familyName = familyName;
        this.picture = picture;
        this.locale = locale;
    }

    public User toUser(String accessToken) {
        return new User(email, name, accessToken);
    }

    public String getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public Boolean getVerifiedEmail() {
        return verifiedEmail;
    }

    public String getName() {
        return name;
    }

    public String getGivenName() {
        return givenName;
    }

    public String getFamilyName() {
        return familyName;
    }

    public String getPicture() {
        return picture;
    }

    public String getLocale() {
        return locale;
    }
}
