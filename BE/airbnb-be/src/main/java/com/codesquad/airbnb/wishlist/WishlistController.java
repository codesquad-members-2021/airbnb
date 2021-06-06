package com.codesquad.airbnb.wishlist;

import com.codesquad.airbnb.common.dummydata.WishlistItemDTODummyDataFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class WishlistController {

    @GetMapping("/users/{userId}/wishlist")
    public List<WishlistItemDTO> readAll(@PathVariable long userId) {
        return WishlistItemDTODummyDataFactory.list();
    }
}
