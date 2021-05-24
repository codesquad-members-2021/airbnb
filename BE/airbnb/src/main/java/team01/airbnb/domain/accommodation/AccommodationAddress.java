package team01.airbnb.domain.accommodation;

import lombok.*;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationAddress {

    private Long accommodationId;
    private Long countryId;
    private Long cityId;
    private String address;
    private String latitude;
    private String longitude;

}
