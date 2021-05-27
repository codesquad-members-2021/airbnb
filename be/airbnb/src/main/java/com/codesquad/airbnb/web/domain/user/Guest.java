package com.codesquad.airbnb.web.domain.user;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class Guest {
    private int id;
    private String name;
    private String profileImage;
}
