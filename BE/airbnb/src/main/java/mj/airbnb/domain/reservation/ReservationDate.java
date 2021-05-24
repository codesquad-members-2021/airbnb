package mj.airbnb.domain.reservation;

import org.springframework.data.annotation.Id;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class ReservationDate {

    @Id
    private Long id;
    private LocalDate reservedDate;
    private Long reservationId;
    private Long reservationAccommodationId;

    public ReservationDate() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getReservedDate() {
        return reservedDate;
    }

    public void setReservedDate(LocalDate reservedDate) {
        this.reservedDate = reservedDate;
    }

    public Long getReservationId() {
        return reservationId;
    }

    public void setReservationId(Long reservationId) {
        this.reservationId = reservationId;
    }

    public Long getReservationAccommodationId() {
        return reservationAccommodationId;
    }

    public void setReservationAccommodationId(Long reservationAccommodationId) {
        this.reservationAccommodationId = reservationAccommodationId;
    }
}
