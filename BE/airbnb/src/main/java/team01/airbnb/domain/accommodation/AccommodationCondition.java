package team01.airbnb.domain.accommodation;

import lombok.*;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationCondition {

    private Long accommodationId;
    private int guests;
    private String bedroomCount;
    private String bedCount;
    private String bathroomCount;

}
