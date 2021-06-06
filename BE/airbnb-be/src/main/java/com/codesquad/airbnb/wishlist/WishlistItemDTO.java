package com.codesquad.airbnb.wishlist;

import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;

import java.util.Objects;

public class WishlistItemDTO {
    private long id;
    private AccommodationResponse accommodation;

    private WishlistItemDTO() {
    }

    public WishlistItemDTO(long id, AccommodationResponse accommodation) {
        this.id = id;
        this.accommodation = accommodation;
    }

    public long getId() {
        return id;
    }

    public AccommodationResponse getAccommodation() {
        return accommodation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        WishlistItemDTO that = (WishlistItemDTO) o;
        return id == that.id && Objects.equals(accommodation, that.accommodation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, accommodation);
    }

    @Override
    public String toString() {
        return "WishlistDTO{" +
                       "id=" + id +
                       ", accommodation=" + accommodation +
                       '}';
    }
}
