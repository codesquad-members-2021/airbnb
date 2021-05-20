package com.codesquad.airbnb.domain;

import org.springframework.data.annotation.Id;

public class Wish {
    @Id
    private Long id;

    public Wish(Long id) {
        this.id = id;
    }
}
