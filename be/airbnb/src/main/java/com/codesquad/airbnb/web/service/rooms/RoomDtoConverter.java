package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.PricePolicy;
import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.dto.RoomPreview;
import com.codesquad.airbnb.web.dto.RoomPreviews;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RoomDtoConverter {
    public RoomPreviews roomsToRoomPreviews(List<Room> rooms, int stayDay) {
        List<RoomPreview> tempPreviews = rooms.stream()
                .map(room ->
                {
                    PricePolicy pricePolicy = room.getPricePolicy();
                    return RoomPreview.builder()
                            .roomId(room.getId())
                            .name(room.getName())
                            .locationName(room.getLocationName())
                            .latitude(room.getPoint().getX())
                            .longtitude(room.getPoint().getY())
                            .roomRating(room.getRating())
                            .reviewCount(room.getReviewCount())
                            .pricePerDay(pricePolicy.getPricePerDay())
                            .totalPrice(pricePolicy.totalPrice(stayDay))
                            .bedroomType(room.getBedroomType().name())
                            .bedCount(room.getBedCount())
                            .bathroomType(room.getBathroomType().name())
                            .amenity(room.getAmenity())
                            .personCapacity(room.getGuestCapacity())
                            //.roomThumbnail()
                            //.host()
                            .build();
                })
                .collect(Collectors.toList());
        return new RoomPreviews(tempPreviews);
    }
}
