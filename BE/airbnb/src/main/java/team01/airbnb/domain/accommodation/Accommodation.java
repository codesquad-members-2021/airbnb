package team01.airbnb.domain.accommodation;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import team01.airbnb.dto.request.AccommodationSaveRequestDto;

import java.time.LocalTime;

@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Getter
public class Accommodation {

    private Long id;
    private Long hostId;
    private String name;
    private String description;
    private int chargePerNight;
    private int cleaningCharge;
    private LocalTime checkIn;
    private LocalTime checkOut;

    public static Accommodation fromSaveRequestDto(AccommodationSaveRequestDto saveRequestDto) {
        return Accommodation.builder()
                .hostId(2L) // 임시로 2 고정
                .name(saveRequestDto.getName())
                .description(saveRequestDto.getDescription())
                .chargePerNight(saveRequestDto.getChargePerNight())
                .cleaningCharge(saveRequestDto.getCleaningCharge())
                .checkIn(LocalTime.parse(saveRequestDto.getCheckIn()))
                .checkOut(LocalTime.parse(saveRequestDto.getCheckOut()))
                .build();
    }
}
