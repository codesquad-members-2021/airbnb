package com.codesquad.coco.room.model.dto;

public class RoomPreviewDTO {

    private Long id;
    private String name;
    private int pricePerDate;
    private RoomOptionDTO homeDetails;
    private String type;
    private boolean wish;
    private String thumbnailImage;
    private LocationDTO coordinate;
    private ReviewDTO review;

    private RoomPreviewDTO(Long id, String name, int pricePerDate, RoomOptionDTO homeDetails, String type, boolean wish, String thumbnailImage, LocationDTO coordinate, ReviewDTO reviewDTO) {
        this.id = id;
        this.name = name;
        this.pricePerDate = pricePerDate;
        this.homeDetails = homeDetails;
        this.type = type;
        this.wish = wish;
        this.thumbnailImage = thumbnailImage;
        this.coordinate = coordinate;
        this.review = reviewDTO;
    }

    public static RoomPreviewDTO of(Long id, String name, int pricePerDate, RoomOptionDTO homeDetails, String type, boolean wish, String thumbnailImage, LocationDTO coordinate, ReviewDTO reviewDTO) {
        return new RoomPreviewDTO(id, name, pricePerDate, homeDetails, type, wish, thumbnailImage, coordinate, reviewDTO);
    }


    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPricePerDate() {
        return pricePerDate;
    }

    public RoomOptionDTO getHomeDetails() {
        return homeDetails;
    }

    public String getType() {
        return type;
    }

    public boolean isWish() {
        return wish;
    }

    public String getThumbnailImage() {
        return thumbnailImage;
    }

    public LocationDTO getCoordinate() {
        return coordinate;
    }

    public ReviewDTO getReviewDTO() {
        return review;
    }
}
