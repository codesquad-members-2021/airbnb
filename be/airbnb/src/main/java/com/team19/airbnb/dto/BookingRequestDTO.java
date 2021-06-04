package com.team19.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.team19.airbnb.domain.Booking.Booking;

import java.math.BigDecimal;
import java.time.LocalDate;

public class BookingRequestDTO {

    @JsonProperty("roomId")
    private Long roomId;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate checkIn;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate checkOut;

    @JsonProperty("personnel")
    private Integer guest;

    @JsonProperty("totalPrice")
    private BigDecimal totalPrice;

    public BookingRequestDTO() {
    }

    public Booking toEntity() {
        return new Booking.Builder()
                .checkIn(checkIn)
                .checkOut(checkOut)
                .guest(guest)
                .totalPrice(totalPrice)
                .room(roomId)
                .build();
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
