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

    public boolean checkLocation(Double latitude, Double longitude) {
        System.out.println("latitude = " + latitude);
        System.out.println("longitude = " + longitude);
        return (latitude - 0.006 <= this.latitude && this.latitude <= latitude + 0.006)
                && (longitude - 0.006 <= this.longitude && this.longitude <= longitude + 0.006);
    }
}
