package team01.airbnb.domain.accommodation;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;
import team01.airbnb.dto.request.TotalAccommodationSaveRequestDto;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationCondition {

    @JsonIgnore
    private Long accommodationId;
    private int guests;
    private int bedroomCount;
    private int bedCount;
    private int bathroomCount;

}
