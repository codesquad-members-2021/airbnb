package com.codesquad.airbnb.web.domain.room;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;
import org.springframework.data.geo.Point;

@Getter
@Builder
@ToString
public class Location {
    private int id;
    private String placeId;
    private LocationType locationType;
    private Point point;
    private String image;
}
