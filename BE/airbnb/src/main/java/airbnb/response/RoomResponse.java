package airbnb.response;

import airbnb.domain.RoomAndBedOption;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import java.util.List;

@Getter
@Builder
public class RoomResponse {
    @JsonIgnore
    private final String city;
    private final Long roomId;
    private final String label;
    private final String placeId;
    private final double latitude;
    private final double longitude;
    private final List<String> roomImages;
    private final Double averageRating;
    private final String title;
    private final Integer maximumNumberOfGuests;
    private final RoomAndBedOption roomAndBedOption;
    private final List<String> amenities;
    private final Integer pricePerNight;
}
