package team01.airbnb.domain.accommodation;

import lombok.*;
import team01.airbnb.dto.request.TotalAccommodationSaveRequestDto;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationCondition {

    private Long accommodationId;
    private int guests;
    private int bedroomCount;
    private int bedCount;
    private int bathroomCount;

    public static AccommodationCondition fromSaveRequestDto(TotalAccommodationSaveRequestDto totalAccommodationSaveRequestDto) {
        return AccommodationCondition.builder()
                .accommodationId(totalAccommodationSaveRequestDto.getId())
                .guests(totalAccommodationSaveRequestDto.getConditionSaveRequestDto().getGuests())
                .bedroomCount(totalAccommodationSaveRequestDto.getConditionSaveRequestDto().getBedroomCount())
                .bedCount(totalAccommodationSaveRequestDto.getConditionSaveRequestDto().getBedCount())
                .bathroomCount(totalAccommodationSaveRequestDto.getConditionSaveRequestDto().getBathroomCount())
                .build();
    }

}
