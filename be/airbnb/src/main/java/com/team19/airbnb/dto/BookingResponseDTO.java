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

    private final Long bookingId;
    private final LocalDate checkIn;
    private final LocalDate checkOut;
    private final Integer guest;
    private final BigDecimal totalPrice;

    private final Long roomId;
    private final String roomName;
    private final List<String> images;
    private final String roomType;
    private final Host host;

    private BookingResponseDTO(Long bookingId,
                              LocalDate checkIn, LocalDate checkOut,
                              Integer guest,
                              BigDecimal totalPrice,
                              Long roomId,
                              String roomName, List<String> images,
                              String roomType,
                              Host host) {
        this.bookingId = bookingId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.totalPrice = totalPrice;
        this.roomId = roomId;
        this.roomName = roomName;
        this.images = images;
        this.roomType = roomType;
        this.host = host;
    }

    public static BookingResponseDTO create(Booking booking, Room room) {
        return new BookingResponseDTO(booking.getId(),
                booking.getCheckIn(), booking.getCheckOut(),
                booking.getGuest(),
                booking.getTotalPrice(),
                room.getId(),
                room.getName(),
                room.getImages().stream()
                        .map(Image::getUrl)
                        .collect(Collectors.toList()),
                room.getRoomType(),
                room.getHost());
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
