package com.team19.airbnb.dto;

public class SearchRequestDTO {
    private String location;
    private String checkIn;
    private String checkOut;
    private String priceRange;
    private int guest; //adult + child , toddler x

    public SearchRequestDTO(String location, String checkIn, String checkOut, String priceRange, int guest) {
        this.location = location;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.priceRange = priceRange;
        this.guest = guest;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public void setCheckOut(String checkOut) {
        this.checkOut = checkOut;
    }

    public void setPriceRange(String priceRange) {
        this.priceRange = priceRange;
    }

    public void setGuest(int guest) {
        this.guest = guest;
    }
}
