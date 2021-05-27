package com.codesquad.airbnb.web.domain.user;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class Host {
    private int id;
    private String name;
    private boolean isSuperhost;
    private String profileImage;
}
