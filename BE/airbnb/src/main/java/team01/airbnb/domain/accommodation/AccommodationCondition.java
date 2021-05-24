package team01.airbnb.domain.accommodation;

import lombok.*;
import team01.airbnb.dto.request.AccommodationSaveRequestDto;

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

    public static AccommodationCondition fromSaveRequestDto(AccommodationSaveRequestDto accommodationSaveRequestDto) {
        return AccommodationCondition.builder()
                .accommodationId(accommodationSaveRequestDto.getId())
                .guests(accommodationSaveRequestDto.getGuests())
                .bedroomCount(accommodationSaveRequestDto.getBedroomCount())
                .bedCount(accommodationSaveRequestDto.getBedCount())
                .bathroomCount(accommodationSaveRequestDto.getBathroomCount())
                .build();
    }

}
