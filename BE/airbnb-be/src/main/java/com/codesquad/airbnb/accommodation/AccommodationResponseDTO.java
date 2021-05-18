package com.codesquad.airbnb.accommodation;

public class AccommodationResponseDTO {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private Integer totalPrice;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;

    public AccommodationResponseDTO() {
    }

    public AccommodationResponseDTO(Long id, String name, AccommodationOption accommodationOption, Integer totalPrice, double reviewRating, int reviewCounts, String mainImage) {
        this.id = id;
        this.name = name;
        this.accommodationOption = accommodationOption;
        this.totalPrice = totalPrice;
        this.reviewRating = reviewRating;
        this.reviewCounts = reviewCounts;
        this.mainImage = mainImage;
    }

    public static AccommodationResponseDTOBuilder builder() {
        return AccommodationResponseDTOBuilder.anAccommodationDTO();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public AccommodationOption getAccommodationOption() {
        return accommodationOption;
    }

    public void setAccommodationOption(AccommodationOption accommodationOption) {
        this.accommodationOption = accommodationOption;
    }

    public Integer getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
    }

    public double getReviewRating() {
        return reviewRating;
    }

    public void setReviewRating(double reviewRating) {
        this.reviewRating = reviewRating;
    }

    public int getReviewCounts() {
        return reviewCounts;
    }

    public void setReviewCounts(int reviewCounts) {
        this.reviewCounts = reviewCounts;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    @Override
    public String toString() {
        return "AccommodationDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", accommodationOption=" + accommodationOption +
                ", totalPrice=" + totalPrice +
                ", reviewRating=" + reviewRating +
                ", reviewCounts=" + reviewCounts +
                ", mainImage='" + mainImage + '\'' +
                '}';
    }
}
