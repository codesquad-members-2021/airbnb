package com.codesquad.coco.Host;

import org.springframework.data.annotation.Id;

public class Host {

    @Id
    private Long id;

    private String name;
    private String profileImageUrl;

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }
}
