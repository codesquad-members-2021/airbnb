package com.example.airbnb.dto;

public class RecommendedDTO {
    String cityName;
    String description;
    String image;

    public RecommendedDTO(String cityName, String description, String image) {
        this.cityName = cityName;
        this.description = description;
        this.image = image;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "RecommendedDTO{" +
                "cityName='" + cityName + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
