package com.codesquad.coco.room.model.dto;

import com.codesquad.coco.host.HostDTO;
import com.codesquad.coco.image.ImageDTO;

import java.util.List;

public class RoomDetailDTO {

    private Long id;
    private String name;
    private HostDTO host;
    private RoomOptionDTO homeDetails;
    private String type;
    private int priceForData;
    private String description;
    private boolean wish;
    private LocationDTO coordinate;
    private List<ImageDTO> images; //fixme : image-> images
    private ReviewDTO review;
    private AdditionalCostDTO additionalCost;

    private RoomDetailDTO(Long id, String name, HostDTO host, RoomOptionDTO homeDetails, String type, int priceForData,
                          String description, boolean wish, LocationDTO coordinate, List<ImageDTO> images, ReviewDTO review, AdditionalCostDTO additionalCost) {
        this.id = id;
        this.name = name;
        this.host = host;
        this.homeDetails = homeDetails;
        this.type = type;
        this.priceForData = priceForData;
        this.description = description;
        this.wish = wish;
        this.coordinate = coordinate;
        this.images = images;
        this.review = review;
        this.additionalCost = additionalCost;
    }

    public static RoomDetailDTO of(Long id, String name, HostDTO host, RoomOptionDTO homeDetails, String type,
                                   int priceForData, String description, boolean wish, LocationDTO coordinate, List<ImageDTO> images, ReviewDTO review, AdditionalCostDTO additionalCost) {
        return new RoomDetailDTO(id, name, host, homeDetails, type, priceForData, description, wish, coordinate, images, review, additionalCost);
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public HostDTO getHost() {
        return host;
    }

    public RoomOptionDTO getHomeDetails() {
        return homeDetails;
    }

    public String getType() {
        return type;
    }

    public int getPriceForData() {
        return priceForData;
    }

    public String getDescription() {
        return description;
    }

    public boolean isWish() {
        return wish;
    }

    public LocationDTO getCoordinate() {
        return coordinate;
    }

    public List<ImageDTO> getImages() {
        return images;
    }

    public ReviewDTO getReview() {
        return review;
    }

    public AdditionalCostDTO getAdditionalCost() {
        return additionalCost;
    }
}
