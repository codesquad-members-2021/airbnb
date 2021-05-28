package com.team19.airbnb.controller;

import com.team19.airbnb.ResponseBody;
import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.WishListRequestDTO;
import com.team19.airbnb.service.UserService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class WishlistController {

    private final UserService userService;

    public WishlistController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/wishlist/{userId}")
    public ResponseBody<List<RoomDetailResponseDTO>> getWishList(@PathVariable Long userId) {
        return ResponseBody.ok(userService.showWishLists(userId));
    }

    @PostMapping("/wishlist/{userId}")
    public void postWishList(@PathVariable Long userId, @RequestBody WishListRequestDTO wishListRequestDTO) {
    }

    @DeleteMapping("/wishlist/{userId}")
    public void deleteWishList(@PathVariable Long userId, @RequestBody WishListRequestDTO wishListRequestDTO) {
    }
}
