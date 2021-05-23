package com.team19.airbnb.entity;

public class Host {

    private String name;
    private String profileImage;

    public Host(String name, String profileImage) {
        this.name = name;
        this.profileImage = profileImage;
    }

    public String getName() {
        return name;
    }

    public String getProfileImage() {
        return profileImage;
    }
}
