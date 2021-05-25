package com.enolj.airbnb.service;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.house.HouseDAO;
import com.enolj.airbnb.domain.image.Image;
import com.enolj.airbnb.domain.image.ImageDAO;
import com.enolj.airbnb.domain.join.Join;
import com.enolj.airbnb.domain.join.JoinDAO;
import com.enolj.airbnb.domain.user.User;
import com.enolj.airbnb.domain.user.UserDAO;
import com.enolj.airbnb.domain.wish.Wish;
import com.enolj.airbnb.domain.wish.WishDAO;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.web.dto.ReservationInfoResponseDTO;
import com.enolj.airbnb.web.dto.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import static com.enolj.airbnb.service.UserService.getUserFromAuthorization;
import static com.enolj.airbnb.web.dto.ReservationDetailDTO.createReservationDetailDTO;
import static com.enolj.airbnb.web.dto.ReservationInfoResponseDTO.createReservationInfoResponseDTO;
import static com.enolj.airbnb.web.dto.ReservationResponseDTO.createReservationResponseDTO;
import static com.enolj.airbnb.web.dto.SearchResponseDTO.createSearchResponseDTO;
import static com.enolj.airbnb.web.dto.WishResponseDTO.createWishResponseDTO;

@Service
public class HouseService {

    private final UserDAO userDAO;
    private final HouseDAO houseDAO;
    private final ImageDAO imageDAO;
    private final JoinDAO joinDAO;
    private final WishDAO wishDAO;

    public HouseService(UserDAO userDAO, HouseDAO houseDAO, ImageDAO imageDAO, JoinDAO joinDAO, WishDAO wishDAO) {
        this.userDAO = userDAO;
        this.houseDAO = houseDAO;
        this.imageDAO = imageDAO;
        this.joinDAO = joinDAO;
        this.wishDAO = wishDAO;
    }

    public List<SearchResponseDTO> searchHousesByCondition(SearchRequestDTO requestDTO) {
        System.out.println(requestDTO);
        return houseDAO.findAll().stream()
                .filter(house -> house.checkCharge(requestDTO.getMinCharge(), requestDTO.getMaxCharge()))
                .filter((house -> house.checkLocation(requestDTO.getLatitude(), requestDTO.getLongitude())))
                .map(house -> createSearchResponseDTO(house, findOneImageByHouseId(house.getId())))
                .collect(Collectors.toList());
    }

    private Image findOneImageByHouseId(Long houseId) {
        return imageDAO.findAll(houseId).stream()
                .findFirst()
                .orElseThrow(EntityNotFoundException::new);
    }

    public List<Integer> searchChargesByCondition(SearchChargesRequestDTO requestDTO) {
        System.out.println(requestDTO);
        return houseDAO.findAll().stream()
                .map(House::getCharge)
                .collect(Collectors.toList());
    }

    public ReservationInfoResponseDTO getReservationInfo(Long houseId) {
        return createReservationInfoResponseDTO(findHouseById(houseId));
    }

    private House findHouseById(Long houseId) {
        return houseDAO.findById(houseId).orElseThrow(EntityNotFoundException::new);
    }

    public void makeReservation(String authorization, Long houseId, ReservationRequestDTO requestDTO) {
        System.out.println(requestDTO);
        Join join = requestDTO.toEntity();
        join.reservation(getUserFromAuthorization(userDAO, authorization), findHouseById(houseId));
        joinDAO.save(join);
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

    public List<ReservationResponseDTO> getReservationList(String authorization) {
        User user = getUserFromAuthorization(userDAO, authorization);
        return joinDAO.findAllByUserId(user.getId()).stream()
                .map(join -> createReservationResponseDTO(findHouseById(join.getUserId()), join, findOneImageByHouseId(join.getHouseId())))
                .collect(Collectors.toList());
    }

    public ReservationDetailDTO getReservationDetail(String authorization, Long houseId) {
        User user = getUserFromAuthorization(userDAO, authorization);
        House house = findHouseById(houseId);
        Join join = findJoinByUserIdAndHouseId(user.getId(), house.getId());
        List<String> images = imageDAO.findAll(house.getId()).stream()
                .map(Image::getUrl)
                .collect(Collectors.toList());
        return createReservationDetailDTO(house, images, join);
    }

    public void cancelReservation(String authorization, Long houseId) {
        User user = getUserFromAuthorization(userDAO, authorization);
        House house = findHouseById(houseId);
        joinDAO.delete(findJoinByUserIdAndHouseId(user.getId(), house.getId()));
    }

    private Join findJoinByUserIdAndHouseId(Long userId, Long houseId) {
        return joinDAO.findByUserIdAndHouseId(userId, houseId).orElseThrow(EntityNotFoundException::new);
    }
}
