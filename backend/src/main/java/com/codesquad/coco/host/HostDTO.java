package com.codesquad.coco.host;

public class HostDTO {

    private String name;
    private String profileImageUrl;

    public HostDTO(String name, String profileImageUrl) {
        this.name = name;
        this.profileImageUrl = profileImageUrl;
    }

    public String getName() {
        return name;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }
}
