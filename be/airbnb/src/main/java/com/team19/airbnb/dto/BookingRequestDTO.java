package com.team19.airbnb.dto;

public class BookingRequestDTO {
    // /bookings
    private int roomId;
    private String checkIn;
    private String checkOut;
    private int guest;
    private int totalPrice;

    public BookingRequestDTO(int roomId, String checkIn, String checkOut, int guest, int totalPrice) {
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
