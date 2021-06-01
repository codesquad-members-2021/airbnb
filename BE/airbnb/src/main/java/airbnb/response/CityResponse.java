package airbnb.response;

import airbnb.domain.City;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@AllArgsConstructor
@Getter
@Builder
public class CityResponse {
    private final String name;
    private final String driveTime;
    private final String image;
}
