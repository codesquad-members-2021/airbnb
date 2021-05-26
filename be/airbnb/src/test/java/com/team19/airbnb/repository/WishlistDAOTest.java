package com.team19.airbnb.repository;

import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.Wishlist;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.*;

//삭제예정
@SpringBootTest
@Transactional
class WishlistDAOTest {

    @Autowired
    WishlistDAO wishlistDAO;

    @Autowired
    UserRepository userRepository;

    @Test
    void findAll() {
        User user = userRepository.findById(1L).get();
        Wishlist wishlist = wishlistDAO.findById(1L).get();
        assertThat(user.getWishlists().get(0).getRoom()).isEqualTo(wishlist.getRoom());
    }
}
