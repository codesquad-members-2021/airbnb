package com.enolj.airbnb.service;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.house.HouseDAO;
import com.enolj.airbnb.domain.user.User;
import com.enolj.airbnb.domain.user.UserDAO;
import com.enolj.airbnb.domain.wish.Wish;
import com.enolj.airbnb.domain.wish.WishDAO;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.web.dto.WishResponseDTO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import static com.enolj.airbnb.service.UserService.getUserFromAuthorization;
import static com.enolj.airbnb.web.dto.WishResponseDTO.createWishResponseDTO;

@Service
public class WishService {

    private final UserDAO userDAO;
    private final HouseDAO houseDAO;
    private final WishDAO wishDAO;

    public WishService(UserDAO userDAO, HouseDAO houseDAO, WishDAO wishDAO) {
        this.userDAO = userDAO;
        this.houseDAO = houseDAO;
        this.wishDAO = wishDAO;
    }

    public List<WishResponseDTO> getWishList(String authorization) {
        return wishDAO.findAllByUserId(getUserFromAuthorization(userDAO, authorization).getId()).stream()
                .map(wish -> createWishResponseDTO(findHouseById(wish.getHouseId())))
                .collect(Collectors.toList());
    }

    public void changeWish(String authorization, Long houseId) {
        User user = getUserFromAuthorization(userDAO, authorization);
        House house = findHouseById(houseId);
        Optional<Wish> wish = wishDAO.findByUserIdAndHouseId(user.getId(), house.getId());
        if (wish.isPresent()) {
            wishDAO.delete(wish.get());
            return;
        }
        wishDAO.save(Wish.createWish(user, house));
    }

    private House findHouseById(Long houseId) {
        return houseDAO.findById(houseId).orElseThrow(EntityNotFoundException::new);
    }
}
