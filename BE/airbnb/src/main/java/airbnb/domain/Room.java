package airbnb.domain;

import airbnb.response.RoomResponse;
import lombok.*;

import javax.persistence.*;
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

    protected String name;

    @Embedded
    private Location location;

    @OneToOne
    protected City city;

    @Embedded
    private Rule rule;

    @Embedded
    private RoomAndBedOption roomAndBedOption;

    private int pricePerNight;

    private double averageRating;

    private int maximumNumberOfGuests;

    @ManyToOne
    @JoinColumn
    private Host host;

    private boolean wish;

    @Enumerated(EnumType.STRING)
    private PropertyType propertyType;

    @OneToMany(mappedBy = "room", cascade = CascadeType.ALL)
    private final List<Booking> bookings = new ArrayList<>();

    @Embedded
    private Amenity amenity;

    @ElementCollection
    @CollectionTable(name = "image", joinColumns = @JoinColumn(name = "room_id"))
    private final List<Image> images = new ArrayList<>();

    public static RoomResponse of(Room room) {
        return RoomResponse.builder()
                .city(room.city.getName())
                .location(room.location.getPlaceId())
                .propertyType(room.propertyType.getName())
                .roomImages(room.images.stream().map(Image::getImage).collect(Collectors.toList()))
                .averageRating(room.averageRating)
                .title(room.name)
                .maximumNumberOfGuests(room.maximumNumberOfGuests)
                .roomAndBedOption(room.roomAndBedOption)
                .amenities(AmenityEnum.getAmenityList(room.amenity))
                .pricePerNight(room.pricePerNight)
                .build();
    }
}
