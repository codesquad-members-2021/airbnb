package com.team19.airbnb.dto;

public class BookingResponseDTO {
    private Long bookingId;
    private String checkIn;
    private String checkOut;
    private Long roomId;
    private String roomName;
    private String roomType;
    private String[] images;
    private Host host;
    private int guest;
    private int totalPrice;

    public BookingResponseDTO(Long bookingId,
                              String checkIn, String checkOut,
                              Long roomId, String roomName, String roomType,
                              String[] images,
                              Host host,
                              int guest,
                              int totalPrice) {
        this.bookingId = bookingId;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.roomId = roomId;
        this.roomName = roomName;
        this.roomType = roomType;
        this.images = images;
        this.host = host;
        this.guest = guest;
        this.totalPrice = totalPrice;
    }

    public Long getBookingId() {
        return bookingId;
    }

    public String getCheckIn() {
        return checkIn;
    }

    public String getCheckOut() {
        return checkOut;
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

    public String[] getImages() {
        return images;
    }

    public Host getHost() {
        return host;
    }

    public int getGuest() {
        return guest;
    }

    public int getTotalPrice() {
        return totalPrice;
    }
}
