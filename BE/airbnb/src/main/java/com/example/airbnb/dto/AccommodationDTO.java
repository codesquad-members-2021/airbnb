package com.example.airbnb.dto;

import com.example.airbnb.domain.Accommodation;

public class AccommodationDTO {

    //LocationDTO location;
    private Long id;
    private String title;
    private Double reviewRating;
    private Integer reviewCount;
    private Integer charge;
    private String badge;
    private String  image;
    private Boolean isLike;

    public AccommodationDTO(Accommodation accommodation) {
        this.id = accommodation.getId();
        this.title = accommodation.getTitle();
        this.reviewRating = accommodation.getReviewRating();
        this.reviewCount = accommodation.getReviewCount();
        this.charge = accommodation.getCharge();
        this.badge = accommodation.getBadge();
        this.image = accommodation.getImage();
        this.isLike = accommodation.getIsLike();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getReviewRating() {
        return reviewRating;
    }

    public void setReviewRating(Double reviewRating) {
        this.reviewRating = reviewRating;
    }

    public Integer getReviewCount() {
        return reviewCount;
    }

    public void setReviewCount(Integer reviewCount) {
        this.reviewCount = reviewCount;
    }

    public Integer getCharge() {
        return charge;
    }

    public void setCharge(Integer charge) {
        this.charge = charge;
    }

    public String getBadge() {
        return badge;
    }

    public void setBadge(String badge) {
        this.badge = badge;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Boolean getLike() {
        return isLike;
    }

    public void setLike(Boolean like) {
        isLike = like;
    }
}
