package team01.airbnb.dto.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import team01.airbnb.domain.accommodation.Accommodation;
import team01.airbnb.domain.accommodation.AccommodationCondition;

import java.util.List;

@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationResponseDto {

    private String name;
    private String photo;
    private AccommodationCondition condition;
    private List<String> amenities;
    private int chargePerNight;
    private int totalCharge;

    public static AccommodationResponseDto of(Accommodation accommodation
            , List<String> photos, AccommodationCondition condition, List<String> amenities) {
        return AccommodationResponseDto.builder()
                .name(accommodation.getName())
                .photo(photos.get(0))
                .condition(condition)
                .amenities(amenities)
                .chargePerNight(accommodation.getChargePerNight())
                .totalCharge(0) // 조건 검색 아직 불가하여 0으로 임시 설정
                .build();
    }

}
