package com.codesquad.coco.user;

import org.springframework.data.annotation.Id;

public class User {

    @Id
    private Long id;

    private String name;
    private String email;
    private String profileImageUrl;

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }
}
