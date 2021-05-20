package com.team19.airbnb.controller;

import com.team19.airbnb.dto.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestController
public class MockController {

    @GetMapping("/main")
    public MainResponseDTO main() {
        List<HeroBanner> heroBanners = new ArrayList<>();
        heroBanners.add(new HeroBanner("img1", "hero1"));
        heroBanners.add(new HeroBanner("img2", "hero2"));
        List<NearDestination> nearDestinations = new ArrayList<>();
        nearDestinations.add(new NearDestination("img4", "gangnam", "30min"));
        nearDestinations.add(new NearDestination("img5", "gangbuk", "60min"));
        return new MainResponseDTO(heroBanners, nearDestinations);
    }

    @GetMapping("/search/price/{location}")
    public int[] searchPriceRange(@PathVariable String location) {
        int[] ranges = new int[2];
        ranges[0] = 10000;
        ranges[1] = 15000;
        return ranges;
    }

    @GetMapping("/search")
    public List<RoomDetailResponseDTO> searchRoomsByCondition(@ModelAttribute SearchRequestDTO searchRequestDTO) {
        List<RoomDetailResponseDTO> searchResponseDTOS = new ArrayList<>();
        String[] images = {"img1", "img2"};
        searchResponseDTOS.add(new RoomDetailResponseDTO(1L, "firstRoom", images, 4.5f, 5, "서울시 양재",
                10000, 30000, "one room", new Host("Tree", "treeImg"), "one bed, no bathroom", "It is for test"));
         searchResponseDTOS.add(new RoomDetailResponseDTO(2L, "secondRoom", images, 3.5f, 10, "서울시 청담",
                10000, 30000, "one room", new Host("Tree", "treeImg"), "no bed, no bathroom", "It is for test"));
        return searchResponseDTOS;
    }

    @GetMapping("/rooms/{roomId}")
    public RoomDetailResponseDTO detailRoom(@PathVariable Long roomId) {
        String[] images = {"img1", "img2"};
        Host host = new Host("Tree", "treeImg");
        return new RoomDetailResponseDTO(1L, "firstRoom", images, 4.5f, 5, "서울시 양재",
                10000, 30000, "one room", host, "one bed, no bathroom", "It is for test");
    }

    @GetMapping("/rooms/{roomId}/price")
    public RoomPriceResponseDTO detailRoomPopup(@ModelAttribute RoomPriceRequestDTO roomPriceRequestDTO) {
        return new RoomPriceResponseDTO(5000, 3500, 12000, 7000, 50000);
    }

    @PostMapping("/bookings/{userId}")
    public void bookRoom(@RequestBody BookingRequestDTO bookingRequestDTO) {
        System.out.println(bookingRequestDTO.toString());
    }

    @GetMapping("/bookings/{userId}")
    public List<BookingResponseDTO> getBookings() {
        List<BookingResponseDTO> bookings = new ArrayList<>();
        bookings.add(createBookingResponseDTO(1L));
        bookings.add(createBookingResponseDTO(2L));
        return bookings;
    }

    @GetMapping("/bookings/{bookingId}/{userId}")
    public BookingResponseDTO getBooking(@PathVariable Long bookingId) {
        return createBookingResponseDTO(bookingId);
    }

    @DeleteMapping("/bookings/{bookingId}/{userId}")
    public void deleteWishList(@PathVariable Long bookingId, @PathVariable Long userId) {

    }

    @GetMapping("/wishlist/{userId}")
    public List<RoomDetailResponseDTO> getWishList(@PathVariable Long userId) {
        List<RoomDetailResponseDTO> searchResponseDTOS = new ArrayList<>();
        String[] images = {"img1", "img2"};
        searchResponseDTOS.add(new RoomDetailResponseDTO(1L, "firstRoom", images, 4.5f, 5, "서울시 양재",
                10000, 30000, "one room", new Host("Tree", "treeImg"), "one bed, no bathroom", "It is for test"));
        searchResponseDTOS.add(new RoomDetailResponseDTO(2L, "secondRoom", images, 3.5f, 10, "서울시 청담",
                10000, 30000, "one room", new Host("Tree", "treeImg"), "no bed, no bathroom", "It is for test"));
        return searchResponseDTOS;
    }

    @PostMapping("/wishlist/{userId}")
    public void postWishList(@PathVariable Long userId, @RequestBody WishListRequestDTO wishListRequestDTO) {
        System.out.println(wishListRequestDTO.toString());
    }

    @DeleteMapping("/wishlist/{userId}")
    public void deleteWishList(@PathVariable Long userId, @RequestBody WishListRequestDTO wishListRequestDTO) {

    }

    private BookingResponseDTO createBookingResponseDTO(Long bookingId) {
        String checkIn = "2021-05-20";
        String checkOut = "2021-05-30";
        Long roomId = 1L;
        String roomName = "코드스쿼드";
        String roomType = "원룸";
        String[] images = {"images1", "images2", "images3"};
        Host host = new Host("홍길동", "image");
        int guest = 5;
        int totalPrice = 100000;
        return new BookingResponseDTO(bookingId,
                checkIn, checkOut,
                roomId, roomName, roomType,
                images,
                host,
                guest,
                totalPrice);
    }
}

