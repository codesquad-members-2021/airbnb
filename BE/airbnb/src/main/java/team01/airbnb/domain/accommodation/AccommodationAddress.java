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

    // todo : 임시로 국가와 도시 고정함, 위경도 수정 요함
    public static AccommodationAddress fromSaveRequestDto(TotalAccommodationSaveRequestDto saveRequestDto) {
        return AccommodationAddress.builder()
                .accommodationId(saveRequestDto.getId())
                .countryId(1L)
                .cityId(1L)
                .address(saveRequestDto.getAddress())
                .build();
    }

}
