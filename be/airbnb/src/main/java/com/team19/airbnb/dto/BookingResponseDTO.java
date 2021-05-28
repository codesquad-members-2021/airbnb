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

    private BookingResponseDTO(Builder builder) {
        this.bookingId = builder.bookingId;
        this.checkIn = builder.checkIn;
        this.checkOut = builder.checkOut;
        this.guest = builder.guest;
        this.totalPrice = builder.totalPrice;

        this.roomId = builder.roomId;
        this.roomName = builder.roomName;
        this.roomType = builder.roomType;
        this.images = builder.images;
        this.host = builder.host;
    }

    public static class Builder {

        private final Long bookingId;
        private final LocalDate checkIn;
        private final LocalDate checkOut;
        private final Integer guest;
        private final BigDecimal totalPrice;

        private final Long roomId;
        private final String roomName;
        private final String roomType;
        private final List<String> images;
        private final Host host;

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
            return new BookingResponseDTO(this);
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
