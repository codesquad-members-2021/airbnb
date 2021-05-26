package com.team19.airbnb.service;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import com.team19.airbnb.exception.UserNotFoundException;
import com.team19.airbnb.repository.UserDAO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserDAO userDAO;

    public UserService(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public List<Wishlist> showWishLists(Long userId) {
        userDAO.findById(userId).orElseThrow(UserNotFoundException::new).getWishlists();

    }
}
