package com.team19.airbnb.service;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import com.team19.airbnb.repository.WishlistDAO;
import org.springframework.stereotype.Service;

@Service
public class WishlistService {

    private final UserService userService;
    private final WishlistDAO wishlistDAO;

    public WishlistService(UserService userService, WishlistDAO wishlistDAO) {
        this.userService = userService;
        this.wishlistDAO = wishlistDAO;
    }

    public void addWishList(Long roomId, Long userId) {
        User user = userService.findUserById(userId);
        Wishlist wishlist = Wishlist.create(roomId);
        user.addWishlist(wishlist);
        wishlistDAO.updateWishlist(user, wishlist);
    }

    public void deleteWishlist(Long roomId, Long userId) {
        User user = userService.findUserById(userId);
        Wishlist wishlist = Wishlist.create(roomId);
        user.removeWishlist(wishlist);
        wishlistDAO.removeWishlist(user, wishlist);

    }
}
