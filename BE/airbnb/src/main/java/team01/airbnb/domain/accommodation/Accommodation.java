package team01.airbnb.domain.accommodation;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

import java.sql.Time;

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
    private Time checkIn;
    private Time checkOut;

}
