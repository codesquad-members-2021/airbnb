package mj.airbnb.domain.reservation;

import org.springframework.data.annotation.Id;

public class ReservationDate {

    @Id
    private Long id;
    private String reservedDate;
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

    public String getReservedDate() {
        return reservedDate;
    }

    public void setReservedDate(String reservedDate) {
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
