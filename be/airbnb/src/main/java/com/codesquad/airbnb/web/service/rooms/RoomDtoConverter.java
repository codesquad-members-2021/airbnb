package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.PricePolicy;
import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.domain.room.RoomImage;
import com.codesquad.airbnb.web.domain.user.Host;
import com.codesquad.airbnb.web.dto.HostProfile;
import com.codesquad.airbnb.web.dto.RoomDetail;
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
                    Host host = room.getHost();
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
                            .roomThumbnail(room.getThumbnail())
                            .host(HostProfile.builder()
                                    .hostId(host.getId())
                                    .hostName(host.getName())
                                    .isSuperhost(host.isSuperhost())
                                    .profileImage(host.getProfileImage())
                                    .build())
                            .build();
                })
                .collect(Collectors.toList());
        return new RoomPreviews(tempPreviews);
    }

    public RoomDetail roomToRoomDetail(Room room, int stayDay) {
        PricePolicy pricePolicy = room.getPricePolicy();
        Host host = room.getHost();
        List<RoomImage> detailImages = room.getDetailImages();

        return RoomDetail.builder()
                .roomId(room.getId())
                .name(room.getName())
                .locationName(room.getLocationName())
                .latitude(room.getPoint().getX())
                .longtitude(room.getPoint().getY())
                .roomRating(room.getRating())
                .reviewCount(room.getReviewCount())
                .serviceFee(pricePolicy.getServiceFee())
                .accomodationTax(pricePolicy.getAccomodationTax())
                .cleanUpCost(pricePolicy.getCleanUpCost())
                .pricePerDay(pricePolicy.getPricePerDay())
                .weeklyDiscount(pricePolicy.getWeeklyDiscount())
                .totalPrice(pricePolicy.totalPrice(stayDay))
                .bedroomType(room.getBedroomType().name())
                .bedCount(room.getBedCount())
                .bathroomType(room.getBathroomType().name())
                .amenity(room.getAmenity())
                .personCapacity(room.getGuestCapacity())
                .roomThumbnail(room.getThumbnail())
                .host(HostProfile.builder()
                        .hostId(host.getId())
                        .hostName(host.getName())
                        .isSuperhost(host.isSuperhost())
                        .profileImage(host.getProfileImage())
                        .build())
                .detailImages(detailImages.stream()
                        .map(RoomImage::getUrl)
                        .collect(Collectors.toList()))
                .build();
    }
}
