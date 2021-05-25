package com.team19.airbnb.dto;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.room.Host;
import com.team19.airbnb.domain.room.Image;
import com.team19.airbnb.domain.room.Room;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

public class BookingResponseDTO {

    private Long bookingId;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private Integer guest;
    private BigDecimal totalPrice;

    private Long roomId;
    private String roomName;
    private String roomType;
    private List<String> images;
    private Host host;

    private BookingResponseDTO(Long bookingId, LocalDate checkIn, LocalDate checkOut, Integer guest, BigDecimal totalPrice,
                               Long roomId, String roomName, String roomType, List<String> images, Host host) {
        this.bookingId = bookingId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.totalPrice = totalPrice;

        this.roomId = roomId;
        this.roomName = roomName;
        this.roomType = roomType;
        this.images = images;
        this.host = host;
    }

    public static class Builder {

        private Long bookingId;
        private LocalDate checkIn;
        private LocalDate checkOut;
        private Integer guest;
        private BigDecimal totalPrice;

        private Long roomId;
        private String roomName;
        private String roomType;
        private List<String> images;
        private Host host;

        public Builder(Booking booking, Room room) {

            this.bookingId = booking.getId();
            this.checkIn = booking.getCheckIn();
            this.checkOut = booking.getCheckOut();
            this.guest = booking.getGuest();
            this.totalPrice = booking.getTotalPrice();

            this.roomId = room.getId();
            this.roomName = room.getName();
            this.roomType = room.getRoomType();
            this.images = room.getImages().stream()
                    .map(Image::getUrl)
                    .collect(Collectors.toList());
            this.host = room.getHost();
        }

        public BookingResponseDTO build() {
            return new BookingResponseDTO(bookingId, checkIn, checkOut, guest, totalPrice,
                    roomId, roomName, roomType, images, host);
        }
    }

    public Long getBookingId() {
        return bookingId;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public Long getRoomId() {
        return roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public String getRoomType() {
        return roomType;
    }

    public List<String> getImages() {
        return images;
    }

    public Host getHost() {
        return host;
    }

    public Integer getGuest() {
        return guest;
    }
}
