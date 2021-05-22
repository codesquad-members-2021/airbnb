package com.example.airbnb.domain;

import org.springframework.data.annotation.Id;

public class User {
    @Id
    private final Long id;
    private final String githubId;
    private final String githubEmail;

    public User(Long id, String githubId, String githubEmail) {
        this.id = id;
        this.githubId = githubId;
        this.githubEmail = githubEmail;
    }

    public Long getId() {
        return id;
    }

    public String getGithubId() {
        return githubId;
    }

    public String getGithubEmail() {
        return githubEmail;
    }

}
