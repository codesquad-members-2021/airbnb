package airbnb.domain;

import airbnb.response.BookingResponse;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.stream.Collectors;

import static javax.persistence.FetchType.LAZY;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonIgnore
    @ManyToOne(fetch = LAZY, cascade = CascadeType.ALL)
    @JoinColumn
    private User user;

    @JsonIgnore
    @ManyToOne(fetch = LAZY)
    @JoinColumn
    private Room room;

    @Embedded
    private Guest guest;

    private LocalDate checkIn;
    private LocalDate checkOut;

    private Integer totalPrice;

    public BookingResponse createBookingResponse() {
        return BookingResponse.builder()
                .bookingId(getId())
                .name(room.getName())
                .roomImages(room.getImages().stream().map(Image::getImage).collect(Collectors.toList()))
                .place(room.getLocation().getPlaceId())
                .host(room.getHost().getName())
                .checkIn(LocalDateTime.of(checkIn, room.getRule().getCheckInTime()))
                .checkOut(LocalDateTime.of(checkOut, room.getRule().getCheckOutTime()))
                .numberOfGuests(guest.numberOfGuests())
                .totalPrice(totalPrice)
                .build();
    }
}
