package com.team19.airbnb.service;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import com.team19.airbnb.dto.WishListRequestDTO;
import com.team19.airbnb.repository.UserDAO;
import com.team19.airbnb.repository.WishlistDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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
        List<Wishlist> wishlists = user.getWishlists();
        wishlists.add(wishListRequestDTO.toEntity());
        Wishlist wishlist = wishListRequestDTO.toEntity();
        wishlistDAO.updateWishlist(user, wishlist);
    }

    public void deleteWishlist(WishListRequestDTO wishListRequestDTO, Long userId) {
        User user = userService.findUser(userId);
        Wishlist wishlist = wishListRequestDTO.toEntity();
        user.removeWishlist(wishlist);
        wishlistDAO.removeWishlist(user, wishlist);

    }
}
