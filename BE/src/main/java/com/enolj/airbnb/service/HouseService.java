package com.enolj.airbnb.service;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.house.HouseDAO;
import com.enolj.airbnb.domain.image.Image;
import com.enolj.airbnb.domain.image.ImageDAO;
import com.enolj.airbnb.exception.EntityNotFoundException;
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

    private final HouseDAO houseDAO;
    private final ImageDAO imageDAO;

    public HouseService(HouseDAO houseDAO, ImageDAO imageDAO) {
        this.houseDAO = houseDAO;
        this.imageDAO = imageDAO;
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

    public void makeReservation(ReservationRequestDTO requestDTO) {
        System.out.println(requestDTO);
    }

    public List<WishesResponseDTO> getWishList() {
        List<WishesResponseDTO> wishesResponseDTOList = new ArrayList<>();
        wishesResponseDTOList.add(new WishesResponseDTO(1L, "비담집, 비우고담은집", 308571, true, 4.98));
        wishesResponseDTOList.add(new WishesResponseDTO(2L, "비담집, 비우고담은집", 308571, true, 4.98));
        wishesResponseDTOList.add(new WishesResponseDTO(3L, "비담집, 비우고담은집", 308571, true, 4.98));
        return wishesResponseDTOList;
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
