package airbnb.domain;

import airbnb.request.BookingRequest;
import airbnb.response.RoomDetailPageResponse;
import airbnb.response.RoomResponse;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Entity
@Getter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String detailInfo;

    @Embedded
    private Location location;

    @OneToOne
    private City city;

    @Embedded
    private Rule rule;

    @Embedded
    private RoomAndBedOption roomAndBedOption;

    private int pricePerNight;

    private double averageRating;

    private int maximumNumberOfGuests;

    private String label;

    @ManyToOne
    @JoinColumn
    private Host host;

    @Enumerated(EnumType.STRING)
    private PropertyType propertyType;

    @OneToMany(mappedBy = "room", cascade = CascadeType.ALL)
    private final List<Booking> bookings = new ArrayList<>();

    @Embedded
    private Amenity amenity;

    @ElementCollection
    @CollectionTable(name = "image", joinColumns = @JoinColumn(name = "room_id"))
    private final List<Image> images = new ArrayList<>();

    public RoomResponse createRoomResponse() {
        return RoomResponse.builder()
                .roomId(id)
                .city(city.getName())
                .placeId(location.getPlaceId())
                .latitude(location.getLatitude())
                .longitude(location.getLongitude())
                .label(label)
                .roomImages(images.stream().map(Image::getImage).collect(Collectors.toList()))
                .averageRating(averageRating)
                .title(name)
                .maximumNumberOfGuests(maximumNumberOfGuests)
                .roomAndBedOption(roomAndBedOption)
                .amenities(AmenityEnum.getAmenityList(amenity))
                .pricePerNight(pricePerNight)
                .build();
    }

    public RoomDetailPageResponse createDetailPageResponse() {
        return RoomDetailPageResponse.builder()
                .roomImages(images.stream().map(Image::getImage).collect(Collectors.toList()))
                .title(name)
                .roomDescription(detailInfo)
                .averageRating(averageRating)
                .host(host)
                .pricePerNight(pricePerNight)
                .build();
    }

    public Booking createBooking(User user, BookingRequest reservationInfo) {
        return Booking.builder()
                .user(user)
                .room(this)
                .guest(BookingRequest.createGuest(reservationInfo))
                .checkIn(LocalDate.parse(reservationInfo.getCheckIn()))
                .checkOut(LocalDate.parse(reservationInfo.getCheckOut()))
                .totalPrice(reservationInfo.getTotalPrice())
                .build();
    }
}
