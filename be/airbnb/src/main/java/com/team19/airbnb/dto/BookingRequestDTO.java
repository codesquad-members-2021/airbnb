package com.team19.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.team19.airbnb.domain.Booking;

import java.math.BigDecimal;
import java.time.LocalDate;

public class BookingRequestDTO {
    // /bookings
    private Long roomId;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate checkIn;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate checkOut;

    @JsonProperty("personnel")
    private Integer guest;
    private BigDecimal totalPrice;

    public BookingRequestDTO(Long roomId,
                             LocalDate checkIn, LocalDate checkOut,
                             Integer guest,
                             BigDecimal totalPrice) {
        this.roomId = roomId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.guest = guest;
        this.totalPrice = totalPrice;
    }

    public Booking toEntiy() {
        return Booking.create(checkIn, checkOut, guest, totalPrice, roomId);
    }

    @Override
    public String toString() {
        return "BookingRequestDTO{" +
                "roomId=" + roomId +
                ", checkIn='" + checkIn + '\'' +
                ", checkOut='" + checkOut + '\'' +
                ", guest=" + guest +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
