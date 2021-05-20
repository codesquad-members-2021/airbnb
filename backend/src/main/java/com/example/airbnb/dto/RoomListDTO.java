package com.example.airbnb.dto;

public class RoomListDTO {
    private RoomDTO room;
    private String thumbImage;
    private int totalPrice;

    public RoomListDTO(RoomDTO room, String thumbImage, int days) {
        this.room = room;
        this.thumbImage = thumbImage;
        int basicPrice = room.getPricePerDay() * days;
        Double weekSale = -(basicPrice * 0.04);
        int cleaningFee = 20000;
        Double serviceFee = basicPrice *0.14;
        Double resultFee = basicPrice * 0.014;
        this.totalPrice = basicPrice + weekSale.intValue() + cleaningFee + serviceFee.intValue() +resultFee.intValue();
    }

    public RoomDTO getRoom() {
        return room;
    }

    public String getThumbImage() {
        return thumbImage;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

}
