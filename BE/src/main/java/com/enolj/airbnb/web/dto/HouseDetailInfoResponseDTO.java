package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;

import java.util.List;

public class HouseDetailInfoResponseDTO {

    private final String name;
    private final List<String> images;
    private final int review;
    private final String location;
    private final String host;
    private final String hostImage;
    private final List<String> options;
    private final String description;
    private final int charge;
    private final boolean wish;

    public HouseDetailInfoResponseDTO(String name, List<String> images, int review, String location, String host, String hostImage, List<String> options, String description, int charge, boolean wish) {
        this.name = name;
        this.images = images;
        this.review = review;
        this.location = location;
        this.host = host;
        this.hostImage = hostImage;
        this.options = options;
        this.description = description;
        this.charge = charge;
        this.wish = wish;
    }

    public static HouseDetailInfoResponseDTO createHouseDetailInfoResponseDTO(House house, List<String> images) {
        return new HouseDetailInfoResponseDTO(house.getName(), images, house.getReview(), house.makeLocation(), house.makeHost(), house.getHostImage(), house.makeOption(), house.getDescription(), house.getCharge(), false);
    }

    public String getName() {
        return name;
    }

    public List<String> getImages() {
        return images;
    }

    public int getReview() {
        return review;
    }

    public String getLocation() {
        return location;
    }

    public String getHost() {
        return host;
    }

    public String getHostImage() {
        return hostImage;
    }

    public List<String> getOptions() {
        return options;
    }

    public String getDescription() {
        return description;
    }

    public int getCharge() {
        return charge;
    }

    public boolean isWish() {
        return wish;
    }

    @Override
    public String toString() {
        return "HouseDetailInfoResponseDTO{" +
                "name='" + name + '\'' +
                ", images=" + images +
                ", review=" + review +
                ", location='" + location + '\'' +
                ", host='" + host + '\'' +
                ", hostImage='" + hostImage + '\'' +
                ", options=" + options +
                ", description='" + description + '\'' +
                ", charge=" + charge +
                ", wish=" + wish +
                '}';
    }
}
