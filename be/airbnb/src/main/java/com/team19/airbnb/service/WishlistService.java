package com.team19.airbnb.service;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import com.team19.airbnb.dto.WishListRequestDTO;
import com.team19.airbnb.repository.WishlistDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class WishlistService {

    private final UserService userService;
    private final WishlistDAO wishlistDAO;

    public WishlistService(UserService userService, WishlistDAO wishlistDAO) {
        this.userService = userService;
        this.wishlistDAO = wishlistDAO;
    }

    public void addWishList(WishListRequestDTO wishListRequestDTO, Long userId) {
        User user = userService.findUser(userId);
        Wishlist wishlist = wishListRequestDTO.toEntity();
        user.addWishlist(wishlist);
        wishlistDAO.updateWishlist(user, wishlist);
    }

    public void deleteWishlist(WishListRequestDTO wishListRequestDTO, Long userId) {
        User user = userService.findUser(userId);
        Wishlist wishlist = wishListRequestDTO.toEntity();
        user.removeWishlist(wishlist);
        wishlistDAO.removeWishlist(user, wishlist);

    }
}
