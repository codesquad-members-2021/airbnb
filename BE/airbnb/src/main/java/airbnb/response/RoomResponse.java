package airbnb.response;

import airbnb.domain.RoomAndBedOption;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import java.util.List;

@Getter
@Builder
@AllArgsConstructor
public class RoomResponse {
    @JsonIgnore
    private String city;
    private String location;
    private String propertyType;
    private List<String> roomImages;
    private Double averageRating;
    private String title;
    private Integer maximumNumberOfGuests;
    private RoomAndBedOption roomAndBedOption;
    private List<String> amenities;
    private Integer pricePerNight;
}
