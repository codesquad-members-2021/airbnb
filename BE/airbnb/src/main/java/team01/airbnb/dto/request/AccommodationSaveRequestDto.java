package team01.airbnb.dto.request;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class AccommodationSaveRequestDto {
    private Long id;
    private String name;
    private String description;
    private int chargePerNight;
    private int cleaningCharge;
    private String checkIn;
    private String checkOut;
    private String address;
    private int guests;
    private int bedroomCount;
    private int bedCount;
    private int bathroomCount;
    private String amenity1;
    private String amenity2;
    private String amenity3;
    private String amenity4;
    private String photo;
}
