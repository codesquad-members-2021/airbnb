package team01.airbnb.domain.accommodation;

import lombok.*;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationPhoto {

    private Long id;
    private Long accommodationId;
    private String name;

}
