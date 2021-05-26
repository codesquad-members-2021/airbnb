package team01.airbnb.domain.accommodation;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import team01.airbnb.dto.Charge;
import team01.airbnb.dto.request.TotalAccommodationSaveRequestDto;

import java.time.LocalTime;

@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Getter
public class Accommodation {

    private Long id;
    private Long hostId;
    private String name;
    private String description;
    private Charge chargePerNight;
    private Charge cleaningCharge;
    private LocalTime checkIn;
    private LocalTime checkOut;

    public static Accommodation fromSaveRequestDto(TotalAccommodationSaveRequestDto saveRequestDto) {
        return Accommodation.builder()
                .hostId(2L) // 임시로 2 고정
                .name(saveRequestDto.getAccommodationSaveRequestDto().getName())
                .description(saveRequestDto.getAccommodationSaveRequestDto().getDescription())
                .chargePerNight(Charge.wons(saveRequestDto.getAccommodationSaveRequestDto().getChargePerNight()))
                .cleaningCharge(Charge.wons(saveRequestDto.getAccommodationSaveRequestDto().getCleaningCharge()))
                .checkIn(LocalTime.parse(saveRequestDto.getAccommodationSaveRequestDto().getCheckIn()))
                .checkOut(LocalTime.parse(saveRequestDto.getAccommodationSaveRequestDto().getCheckOut()))
                .build();
    }
}
