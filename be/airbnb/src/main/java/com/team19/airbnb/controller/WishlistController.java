package com.team19.airbnb.controller;

import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.WishListRequestDTO;
import com.team19.airbnb.entity.Host;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RestController
public class WishlistController {

    @GetMapping("/wishlist/{userId}")
    public List<RoomDetailResponseDTO> getWishList(@PathVariable Long userId) {
        List<RoomDetailResponseDTO> searchResponseDTOS = new ArrayList<>();
        List<String> images = new ArrayList<>();
        images.add("img1");
        images.add("img2");
        searchResponseDTOS.add(new RoomDetailResponseDTO(1L, "firstRoom", images, 4.5, 5, "서울시 양재",
                new BigDecimal(10000), new BigDecimal(10000), "one room", "one bed, no bathroom", "It is for test", new Host("Tree", "treeImg")));
        searchResponseDTOS.add(new RoomDetailResponseDTO(2L, "secondRoom", images, 3.5, 10, "서울시 청담",
                new BigDecimal(10000), new BigDecimal(10000), "one room","no bed, no bathroom", "It is for test",  new Host("Tree", "treeImg")));
        return searchResponseDTOS;
    }

    @PostMapping("/wishlist/{userId}")
    public void postWishList(@PathVariable Long userId, @RequestBody WishListRequestDTO wishListRequestDTO) {
        System.out.println(wishListRequestDTO.toString());
    }

    @DeleteMapping("/wishlist/{userId}")
    public void deleteWishList(@PathVariable Long userId, @RequestBody WishListRequestDTO wishListRequestDTO) {

    }
}
