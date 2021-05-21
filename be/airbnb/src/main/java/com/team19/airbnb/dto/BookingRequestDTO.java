package com.team19.airbnb.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.time.LocalDate;

public class BookingRequestDTO {
    // /bookings
    private Long roomId;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate checkIn;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private LocalDate checkOut;
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
