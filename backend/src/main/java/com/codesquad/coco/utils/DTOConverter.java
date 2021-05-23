package com.codesquad.coco.utils;

import com.codesquad.coco.host.Host;
import com.codesquad.coco.host.HostDTO;
import com.codesquad.coco.image.Image;
import com.codesquad.coco.image.ImageDTO;
import com.codesquad.coco.room.model.*;
import com.codesquad.coco.room.model.dto.*;

import java.util.List;
import java.util.stream.Collectors;

public class DTOConverter {


    public static RoomPreviewDTO roomToRoomPreviewDTO(Room room) {
        return RoomPreviewDTO.of(
                room.getId(),
                room.getName(),
                room.getPricePerDate(),
                roomOptionToRoomOptionDTO(room.getRoomOption()),
                room.getType(),
                room.getWish(),
                room.getThumbnailImage(),
                locationToLocationDTO(room.getLocation()),
                reviewToReviewDTO(room.getReview())
        );
    }

    public static RoomDetailDTO roomToRoomDetailDTO(Room room) {
        return RoomDetailDTO.of(
                room.getId(),
                room.getName(),
                hostToHostDTO(room.getHost()),
                roomOptionToRoomOptionDTO(room.getRoomOption()),
                room.getType(),
                room.getPricePerDate(),
                room.getDescription(),
                room.getWish(),
                locationToLocationDTO(room.getLocation()),
                imagesToImages(room.getImages()),
                reviewToReviewDTO(room.getReview()),
                additionalCostToAdditionalCostDTO(room.getAdditionalCost())
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

    public static RoomOptionDTO roomOptionToRoomOptionDTO(RoomOption roomOption) {
        return new RoomOptionDTO(
                roomOption.getBed(),
                roomOption.getMaxGuest(),
                roomOption.getBathRoom()
        );
    }


}
