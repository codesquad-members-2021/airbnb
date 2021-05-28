package com.codesquad.airbnb.reservation.controller;

import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;

import java.util.Objects;

public class ReservationDTO {
    private Long id;
    private AccommodationResponse accommodation;

    private ReservationDTO() {
    }

    public ReservationDTO(Long id, AccommodationResponse accommodation) {
        this.id = id;
        this.accommodation = accommodation;
    }

    public Long getId() {
        return id;
    }

    public AccommodationResponse getAccommodation() {
        return accommodation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ReservationDTO that = (ReservationDTO) o;
        return Objects.equals(id, that.id) && Objects.equals(accommodation, that.accommodation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, accommodation);
    }

    @Override
    public String toString() {
        return "ReservationDTO{" +
                       "id=" + id +
                       ", accommodation=" + accommodation +
                       '}';
    }
}
