package team01.airbnb.domain;

import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@ToString
@Getter
@Builder
@AllArgsConstructor(access = AccessLevel.PRIVATE)
public class Reservation {

    private Long id;
    private Long accommodationId;
    private Long userId;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private int guests;
    private int charge;
    private LocalDateTime createdTime;

}
