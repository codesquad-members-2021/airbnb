package com.codesquad.coco.utils;

import com.codesquad.coco.rooms.model.Location;
import com.codesquad.coco.rooms.model.Review;
import com.codesquad.coco.rooms.model.Rooms;
import com.codesquad.coco.rooms.model.RoomsOption;
import com.codesquad.coco.rooms.model.dto.LocationDTO;
import com.codesquad.coco.rooms.model.dto.ReviewDTO;
import com.codesquad.coco.rooms.model.dto.RoomsListDTO;
import com.codesquad.coco.rooms.model.dto.RoomsOptionDTO;

public class DTOConverter {


    public static RoomsListDTO roomsToRoomsListDTO(Rooms rooms) {
       return new RoomsListDTO(
                rooms.getId(),
                rooms.getName(),
                rooms.getPricePerDate(),
                roomsOptionToRoomsOptionDTO(rooms.getRoomsOption()),
                rooms.getType(),
                rooms.getWish(),
                rooms.getFirstImage(),
                locationToLocationDTO(rooms.getLocation()),
                reviewToReviewDTO(rooms.getReview())
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
