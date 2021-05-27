package team01.airbnb.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class AccommodationSaveRequestDto {

    private String name;
    private String description;
    private int chargePerNight;
    private int cleaningCharge;
    private String checkIn;
    private String checkOut;

}
