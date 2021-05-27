package team01.airbnb.domain.accommodation;

import lombok.*;
import team01.airbnb.dto.request.TotalAccommodationSaveRequestDto;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationAddress {

    private Long accommodationId;
    private Long countryId;
    private Long cityId;
    private String address;
    private double latitude;
    private double longitude;

}
