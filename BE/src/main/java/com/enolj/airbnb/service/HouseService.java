package com.enolj.airbnb.service;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.house.HouseDAO;
import com.enolj.airbnb.domain.image.Image;
import com.enolj.airbnb.domain.image.ImageDAO;
import com.enolj.airbnb.domain.join.Join;
import com.enolj.airbnb.domain.join.JoinDAO;
import com.enolj.airbnb.domain.user.User;
import com.enolj.airbnb.domain.user.UserDAO;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.exception.ErrorMessage;
import com.enolj.airbnb.exception.TokenException;
import com.enolj.airbnb.web.dto.ReservationInfoResponseDTO;
import com.enolj.airbnb.web.dto.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static com.enolj.airbnb.web.dto.ReservationInfoResponseDTO.createReservationInfoResponseDTO;
import static com.enolj.airbnb.web.dto.SearchResponseDTO.createSearchResponseDTO;

@Service
public class HouseService {

    private final UserDAO userDAO;
    private final HouseDAO houseDAO;
    private final ImageDAO imageDAO;
    private final JoinDAO joinDAO;

    public HouseService(UserDAO userDAO, HouseDAO houseDAO, ImageDAO imageDAO, JoinDAO joinDAO) {
        this.userDAO = userDAO;
        this.houseDAO = houseDAO;
        this.imageDAO = imageDAO;
        this.joinDAO = joinDAO;
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

    public void makeReservation(String userId, Long houseId, ReservationRequestDTO requestDTO) {
        System.out.println(requestDTO);
        Join join = requestDTO.toEntity();
        join.reservation(findUserByUserId(userId), findHouseById(houseId));
        joinDAO.save(join);
    }

    private User findUserByUserId(String userId) {
        User user = userDAO.findByUserId(userId).orElseThrow(EntityNotFoundException::new);
        if (user.getToken() == null) {
            throw new TokenException(ErrorMessage.INVALID_TOKEN);
        }
        return user;
    }

    public List<WishResponseDTO> getWishList(String userId) {
        return wishDAO.findAllByUserId(findUserByUserId(userId).getId()).stream()
                .map(wish -> createWishResponseDTO(findHouseById(wish.getHouseId())))
                .collect(Collectors.toList());
    }

    public void changeWish(Long houseId) {

    }

    public List<ReservationResponseDTO> getReservationList() {
        List<ReservationResponseDTO> reservationResponseDTOList = new ArrayList<>();
        reservationResponseDTOList.add(new ReservationResponseDTO(1L, "https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg",
                "2021년 5월 17일 - 2021년 6월 4일", "서초구, 서울, 한국", "Specious and Comfortable cozy house #4"));
        reservationResponseDTOList.add(new ReservationResponseDTO(2L, "https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg",
                "2021년 5월 17일 - 2021년 6월 4일", "서초구, 서울, 한국", "Specious and Comfortable cozy house #4"));
        reservationResponseDTOList.add(new ReservationResponseDTO(3L, "https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg",
                "2021년 5월 17일 - 2021년 6월 4일", "서초구, 서울, 한국", "Specious and Comfortable cozy house #4"));
        return reservationResponseDTOList;
    }

    public ReservationDetailDTO getReservationDetail(Long houseId) {
        List<String> images = new ArrayList<>();
        images.add("https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg");
        images.add("https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg");
        images.add("https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg");
        return new ReservationDetailDTO(1L, images, "서초구, 서울, 한국", "Specious and Comfortable cozy house #4", "2021년 5월 17일 오후 4:00", "2021년 6월 4일 오후 12:00",
                new Description("Jong님", "집전체 • 게스트 3명", 1488195));
    }

    public void cancelReservation(Long houseId) {

    }
}
