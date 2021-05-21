package com.enolj.airbnb.service;

import com.enolj.airbnb.web.dto.ReservationInfoResponseDTO;
import com.enolj.airbnb.web.dto.*;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class HouseService {

    public List<SearchResponseDTO> searchHousesByCondition(SearchRequestDTO requestDTO) {
        System.out.println(requestDTO);
        List<SearchResponseDTO> searchResponseDTOList = new ArrayList<>();
        searchResponseDTOList.add(new SearchResponseDTO(1L, "https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg",
                new Location(37.566826, 126.9786567), "Specious and Comfortable cozy house #4",
                15400, 4.60, 270, "강남역 5번 출구에서 도보로 이동가능합니다. ...", "최대 인원 3명 • 원룸 • 침대 1개 • 욕실 1개 ...", true));
        searchResponseDTOList.add(new SearchResponseDTO(2L, "https://user-images.githubusercontent.com/63284310/118603297-b2839780-b7ee-11eb-9096-c0fba9792163.jpeg",
                new Location(37.566826, 126.9786567), "Specious and Comfortable cozy house #4",
                15400, 4.60, 270, "강남역 5번 출구에서 도보로 이동가능합니다. ...", "최대 인원 3명 • 원룸 • 침대 1개 • 욕실 1개 ...", false));
        return searchResponseDTOList;
    }

    public List<Integer> searchChargesByCondition(SearchChargesRequestDTO requestDTO) {
        System.out.println(requestDTO);
        List<Integer> charges = new ArrayList<>();
        charges.add(1000);
        charges.add(1000);
        charges.add(1100);
        charges.add(1150);
        charges.add(1150);
        charges.add(3000);
        charges.add(5000);
        charges.add(10000);
        charges.add(100000);
        return charges;
    }

    public ReservationInfoResponseDTO getReservationInfo(Long houseId) {
        return new ReservationInfoResponseDTO(71466, new Fee(25996, 182468), 4);
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
