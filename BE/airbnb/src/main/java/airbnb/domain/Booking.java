package airbnb.domain;

import lombok.Getter;
import org.springframework.data.annotation.Id;

@Getter
public class Booking {
    @Id
    private Long id;

    Long userId;
    Long roomId;
    int adults;
    int children;
    int infants;
    int pricePerNight;
    String checkInTime;
    String checkOutTime;
}
