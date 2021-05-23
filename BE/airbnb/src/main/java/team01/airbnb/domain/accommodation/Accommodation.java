package team01.airbnb.domain.accommodation;

import java.time.LocalDateTime;

public class Accommodation {

    private Long id;
    private Long hostId;
    private String name;
    private String description;
    private int chargePerNight;
    private int cleaningCharge;
    private LocalDateTime checkIn;
    private LocalDateTime checkOut;

}
