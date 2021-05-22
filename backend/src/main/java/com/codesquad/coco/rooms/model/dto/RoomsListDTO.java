package com.codesquad.coco.rooms.model.dto;

public class RoomsListDTO {

    private Long id;
    private String name;
    private int priceForData;
    private RoomsOptionDTO homeDetails;
    private String type;
    private boolean wish;
    private String thumbnailImage;
    private LocationDTO coordinate;
    private ReviewDTO review;

    private RoomsListDTO(Long id, String name, int priceForData, RoomsOptionDTO homeDetails, String type, boolean wish, String thumbnailImage, LocationDTO coordinate, ReviewDTO reviewDTO) {
        this.id = id;
        this.name = name;
        this.priceForData = priceForData;
        this.homeDetails = homeDetails;
        this.type = type;
        this.wish = wish;
        this.thumbnailImage = thumbnailImage;
        this.coordinate = coordinate;
        this.review = reviewDTO;
    }

    public static RoomsListDTO of(Long id, String name, int priceForData, RoomsOptionDTO homeDetails, String type, boolean wish, String thumbnailImage, LocationDTO coordinate, ReviewDTO reviewDTO) {
        return new RoomsListDTO(id, name, priceForData, homeDetails, type, wish, thumbnailImage, coordinate, reviewDTO);
    }


    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPriceForData() {
        return priceForData;
    }

    public RoomsOptionDTO getHomeDetails() {
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
