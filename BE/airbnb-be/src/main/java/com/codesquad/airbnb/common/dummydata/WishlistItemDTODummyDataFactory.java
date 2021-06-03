package com.codesquad.airbnb.common.dummydata;

import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;
import com.codesquad.airbnb.wishlist.WishlistItemDTO;

import java.util.Arrays;
import java.util.List;

public class WishlistItemDTODummyDataFactory {
    private WishlistItemDTODummyDataFactory() {
    }

    public static List<WishlistItemDTO> list() {
        return Arrays.asList(create(), create());
    }

    public static WishlistItemDTO create() {
        return new WishlistItemDTO(1L, AccommodationResponse.from(AccommodationDummyDataFactory.builderWithSuiteRoom().build()));
    }
}
