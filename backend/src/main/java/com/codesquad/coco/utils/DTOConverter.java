package com.codesquad.coco.utils;

import com.codesquad.coco.host.Host;
import com.codesquad.coco.host.HostDTO;
import com.codesquad.coco.image.Image;
import com.codesquad.coco.image.ImageDTO;
import com.codesquad.coco.rooms.model.*;
import com.codesquad.coco.rooms.model.dto.*;

import java.util.List;
import java.util.stream.Collectors;

public class DTOConverter {


    public static RoomsListDTO roomsToRoomsListDTO(Rooms rooms) {
        return RoomsListDTO.of(
                rooms.getId(),
                rooms.getName(),
                rooms.getPricePerDate(),
                roomsOptionToRoomsOptionDTO(rooms.getRoomsOption()),
                rooms.getType(),
                rooms.getWish(),
                rooms.getThumbnailImage(),
                locationToLocationDTO(rooms.getLocation()),
                reviewToReviewDTO(rooms.getReview())
        );
    }

    public static RoomsDetailDTO roomsToRoomsDetailDTO(Rooms rooms) {
        return RoomsDetailDTO.of(
                rooms.getId(),
                rooms.getName(),
                hostToHostDTO(rooms.getHost()),
                roomsOptionToRoomsOptionDTO(rooms.getRoomsOption()),
                rooms.getType(),
                rooms.getPricePerDate(),
                rooms.getDescription(),
                rooms.getWish(),
                locationToLocationDTO(rooms.getLocation()),
                imagesToImages(rooms.getImages()),
                reviewToReviewDTO(rooms.getReview()),
                additionalCostToAdditionalCostDTO(rooms.getAdditionalCost())
        );
    }

    public static AdditionalCostDTO additionalCostToAdditionalCostDTO(AdditionalCost additionalCost) {
        return new AdditionalCostDTO(
                additionalCost.getWeekSalePercent(),
                additionalCost.getCleaningFee(),
                additionalCost.getServiceFeePercent(),
                additionalCost.getLodgmentFeePercent()
        );
    }

    public static List<ImageDTO> imagesToImages(List<Image> images) {
        return images.stream().map(DTOConverter::imageToImage)
                .collect(Collectors.toList());
    }

    public static ImageDTO imageToImage(Image images) {
        return new ImageDTO(
                images.getUrl(),
                images.getType()
        );
    }


    public static HostDTO hostToHostDTO(Host host) {
        return new HostDTO(
                host.getName(),
                host.getProfileImageUrl()
        );
    }

    public static ReviewDTO reviewToReviewDTO(Review review) {
        return new ReviewDTO(
                review.getStar(),
                review.getReview()
        );
    }

    public static LocationDTO locationToLocationDTO(Location location) {
        return new LocationDTO(
                location.getLatitude(),
                location.getLongitude()
        );
    }

    public static RoomsOptionDTO roomsOptionToRoomsOptionDTO(RoomsOption roomsOption) {
        return new RoomsOptionDTO(
                roomsOption.getBed(),
                roomsOption.getMaxGuest(),
                roomsOption.getBathRoom()
        );
    }


}
