package com.team19.airbnb.controller;

import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.WishListRequestDTO;
import com.team19.airbnb.domain.room.Host;
import com.team19.airbnb.service.WishlistService;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RestController
public class WishlistController {

    private final WishlistService wishlistService;

    public WishlistController(WishlistService wishlistService) {
        this.wishlistService = wishlistService;
    }

    @GetMapping("/wishlist/{userId}")
    public ResponseBody<List<RoomDetailResponseDTO>> getWishList(@PathVariable Long userId) {
        return ResponseBody.ok(userService.showWishLists(userId));
    }

    @PostMapping("/wishlist/{userId}")
    public void postWishList(@RequestBody WishListRequestDTO wishListRequestDTO, @PathVariable Long userId) {
        wishlistService.addWishList(wishListRequestDTO, userId);
    }

    @DeleteMapping("/wishlist/{userId}")
    public void deleteWishList(@PathVariable Long userId, @RequestBody WishListRequestDTO wishListRequestDTO) {
    }
}
