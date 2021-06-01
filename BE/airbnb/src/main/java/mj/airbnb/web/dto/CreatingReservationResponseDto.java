package mj.airbnb.web.dto;

import mj.airbnb.domain.reservation.Reservation;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

public class CreatingReservationResponseDto {

    private final Long userId;
    private final Long accommodationId;

    public CreatingReservationResponseDto(Reservation reservation){
        this.userId = reservation.getUserId();
        this.accommodationId = reservation.getAccommodationId();
    }

    public Long getUserId() {
        return userId;
    }

    public Long getAccommodationId() {
        return accommodationId;
    }
}
