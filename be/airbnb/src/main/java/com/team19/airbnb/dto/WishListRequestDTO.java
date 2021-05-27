package com.team19.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.team19.airbnb.domain.Wishlist;

public class WishListRequestDTO {

    @JsonProperty("roomId")
    private Long roomId;

    public WishListRequestDTO() {}

    public WishListRequestDTO(Long roomId) {
        this.roomId = roomId;
    }

    public Wishlist toEntity() {
        return Wishlist.create(roomId);
    }
}
