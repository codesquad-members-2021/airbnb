package com.codesquad.airbnb.accommodation;

public final class AccommodationResponseDTOBuilder {
    private Long id;
    private String name;
    private AccommodationOption accommodationOption;
    private Integer totalPrice;
    private double reviewRating;
    private int reviewCounts;
    private String mainImage;

    private AccommodationResponseDTOBuilder() {
    }

    public static AccommodationResponseDTOBuilder anAccommodationDTO() {
        return new AccommodationResponseDTOBuilder();
    }

    public AccommodationResponseDTOBuilder id(Long id) {
        this.id = id;
        return this;
    }

    public AccommodationResponseDTOBuilder name(String name) {
        this.name = name;
        return this;
    }

    public AccommodationResponseDTOBuilder accommodationOption(AccommodationOption accommodationOption) {
        this.accommodationOption = accommodationOption;
        return this;
    }

    public AccommodationResponseDTOBuilder totalPrice(Integer totalPrice) {
        this.totalPrice = totalPrice;
        return this;
    }

    public AccommodationResponseDTOBuilder reviewRating(double reviewRating) {
        this.reviewRating = reviewRating;
        return this;
    }

    public AccommodationResponseDTOBuilder reviewCounts(int reviewCounts) {
        this.reviewCounts = reviewCounts;
        return this;
    }

    public AccommodationResponseDTOBuilder mainImage(String mainImage) {
        this.mainImage = mainImage;
        return this;
    }

    public AccommodationResponseDTO build() {
        AccommodationResponseDTO accommodationResponseDTO = new AccommodationResponseDTO();
        accommodationResponseDTO.setId(id);
        accommodationResponseDTO.setName(name);
        accommodationResponseDTO.setAccommodationOption(accommodationOption);
        accommodationResponseDTO.setTotalPrice(totalPrice);
        accommodationResponseDTO.setReviewRating(reviewRating);
        accommodationResponseDTO.setReviewCounts(reviewCounts);
        accommodationResponseDTO.setMainImage(mainImage);
        return accommodationResponseDTO;
    }
}
