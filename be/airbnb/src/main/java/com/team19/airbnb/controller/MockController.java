package com.team19.airbnb.controller;

import com.team19.airbnb.dto.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@RestController
public class MockController {

    @GetMapping("/main")
    public MainResponseDTO main() {
        List<HeroBanner> heroBanners = new ArrayList<>();
        heroBanners.add(new HeroBanner( "hero1", "img1"));
        heroBanners.add(new HeroBanner("hero2", "img2"));
        List<NearDestination> nearDestinations = new ArrayList<>();
        nearDestinations.add(new NearDestination( "gangnam", 0.5, "img4"));
        nearDestinations.add(new NearDestination("gangbuk", 1.0, "img5"));
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
        List<String> images = new ArrayList<>();
        images.add("img1");
        images.add("img2");
        searchResponseDTOS.add(new RoomDetailResponseDTO(1L, "firstRoom", images, 4.5, 5, "서울시 양재",
                new BigDecimal(10000), new BigDecimal(10000), "one room", "one bed, no bathroom", "It is for test", new Host("Tree", "treeImg")));
         searchResponseDTOS.add(new RoomDetailResponseDTO(2L, "secondRoom", images, 3.5, 10, "서울시 청담",
                 new BigDecimal(10000), new BigDecimal(10000), "one room", "no bed, no bathroom", "It is for test", new Host("Tree", "treeImg")));
        return searchResponseDTOS;
    }

    @GetMapping("/rooms/{roomId}")
    public RoomDetailResponseDTO detailRoom(@PathVariable Long roomId) {
        List<String> images = new ArrayList<>();
        images.add("img1");
        images.add("img2");
        Host host = new Host("Tree", "treeImg");
        return new RoomDetailResponseDTO(1L, "firstRoom", images, 4.5, 5, "서울시 양재",
                new BigDecimal(10000), new BigDecimal(10000), "one room","one bed, no bathroom", "It is for test", host);
    }

    @GetMapping("/rooms/{roomId}/price")
    public RoomPriceResponseDTO detailRoomPopup(@ModelAttribute RoomPriceRequestDTO roomPriceRequestDTO) {
        return new RoomPriceResponseDTO(new BigDecimal(5000), new BigDecimal(3500), new BigDecimal(12000), new BigDecimal(7000), new BigDecimal(50000));
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
        List<String> images = new ArrayList<>();
        images.add("img1");
        images.add("img2");
        searchResponseDTOS.add(new RoomDetailResponseDTO(1L, "firstRoom", images, 4.5, 5, "서울시 양재",
                new BigDecimal(10000), new BigDecimal(10000), "one room", "one bed, no bathroom", "It is for test", new Host("Tree", "treeImg")));
        searchResponseDTOS.add(new RoomDetailResponseDTO(2L, "secondRoom", images, 3.5, 10, "서울시 청담",
                new BigDecimal(10000), new BigDecimal(10000), "one room","no bed, no bathroom", "It is for test",  new Host("Tree", "treeImg")));
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
        LocalDate checkIn = LocalDate.of(2020,3,20);
        LocalDate checkOut = LocalDate.of(2020, 4, 4);
        Long roomId = 1L;
        String roomName = "코드스쿼드";
        String roomType = "원룸";
        List<String> images = new ArrayList<>();
        images.add("image1");
        images.add("image2");
        images.add("image3");
        Host host = new Host("홍길동", "image");
        int guest = 5;
        BigDecimal totalPrice = new BigDecimal(100000);
        return new BookingResponseDTO(bookingId,
                checkIn, checkOut,
                roomId, roomName, roomType,
                images,
                host,
                guest,
                totalPrice);
    }
}

