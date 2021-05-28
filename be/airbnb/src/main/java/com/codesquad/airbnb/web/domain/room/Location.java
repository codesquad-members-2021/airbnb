package com.codesquad.airbnb.web.domain.room;

import lombok.Builder;
import lombok.Getter;
import org.springframework.data.geo.Point;

@Getter
@Builder
public class Location {
    private int id;
    private String placeId;
    private LocationType locationType;
    private Point point;
    private String image;
}
