package com.team19.airbnb.domain.room;

public class Location {

    //location 검색시 "city" 필요
    //서초구, 서울, 한국 이런식으로 필요?
    private String address;
    private Double latitude;
    private Double longitude;

    Location(String address, Double latitude, Double longitude) {
        this.address = address;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public static Location create(String address, Double latitude, Double longitude) {
        return new Location(address, latitude, longitude);
    }

    public String getAddress() {
        return address;
    }

    public Double getLatitude() {
        return latitude;
    }

    public Double getLongitude() {
        return longitude;
    }
}
