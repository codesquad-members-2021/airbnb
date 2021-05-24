package team01.airbnb.domain.accommodation;

import lombok.*;
import team01.airbnb.dto.request.AccommodationSaveRequestDto;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class AccommodationPhoto {

    private Long id;
    private Long accommodationId;
    private String name;

    public static AccommodationPhoto fromSaveRequestDto(AccommodationSaveRequestDto accommodationSaveRequestDto) {
        return AccommodationPhoto.builder()
                .accommodationId(accommodationSaveRequestDto.getId())
                .name(accommodationSaveRequestDto.getPhoto())
                .build();
    }

}
