package com.team19.airbnb.repository;

import com.team19.airbnb.domain.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
@Transactional
class UserDAOTest {

    @Autowired
    UserDAO userDAO;

    @Autowired
    WishlistDAO wishlistDAO;

    @Test
    void findUserById() {
        User user = userDAO.findById(1L).get();
        Long room = wishlistDAO.findAllByUser(user.getId()).get(0).getRoom();
        assertThat(user.getWishlists().get(0).getRoom()).isEqualTo(room);
    }
}
