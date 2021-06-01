package com.example.airbnb.domain;

public class Accommodation {

    private Long id;
    private String title;
    private Double reviewRating;
    private Integer reviewCount;
    private Integer charge;
    private String badge;
    private String options;
    private String image;
    private Boolean isLike;
    private Double latitude;
    private Double longitude;


    public Accommodation() {
    }


    public Accommodation(Long id, String title, Double reviewRating,
                         Integer reviewCount, Integer charge,
                         String badge,String options,
                         String image, Boolean isLike,
                         Double latitude, Double longitude) {
        this.id = id;
        this.title = title;
        this.reviewRating = reviewRating;
        this.reviewCount = reviewCount;
        this.charge = charge;
        this.badge = badge;
        this.options = options;
        this.image = image;
        this.isLike = isLike;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Long getId() {
        return id;
    }

    public Accommodation setId(Long id) {
        this.id = id;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public Accommodation setTitle(String title) {
        this.title = title;
        return this;
    }

    public Double getReviewRating() {
        return this.reviewRating;
    }

    public Accommodation setReviewRating(Double reviewRating) {
        this.reviewRating = reviewRating;
        return this;
    }

    public Integer getReviewCount() {
        return this.reviewCount;
    }

    public Accommodation setReviewCount(Double reviewRating) {
        this.reviewRating = reviewRating;
        return this;
    }

    public Integer getCharge() {
        return this.charge;
    }

    public Accommodation setCharge(Integer charge) {
        this.charge = charge;
        return this;
    }

    public String getOptions() {
        return this.options;
    }

    public Accommodation setOptions(String options) {
        this.options = options;
        return this;
    }

    public Boolean getIsLike() {
        return this.isLike;
    }

    public Accommodation setIsLike(Boolean isLike) {
        this.isLike = isLike;
        return this;
    }

    public String getImage() {
        return this.image;
    }

    public Accommodation setImage(String image) {
        this.image = image;
        return this;
    }

    public Double getLatitude() {
        return latitude;
    }

    public Accommodation setLatitude(Double latitude) {
        this.latitude = latitude;
        return this;
    }

    public Double getLongitude() {
        return longitude;
    }

    public Accommodation setLongitude(Double longitude) {
        this.longitude = longitude;
        return this;
    }
}
