package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Host {

    @Id
    private Long id;

    private String name;
    private String email;

    public Host(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }
}
