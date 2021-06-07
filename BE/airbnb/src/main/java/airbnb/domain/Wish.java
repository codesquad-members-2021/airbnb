package airbnb.domain;

import airbnb.response.WishResponse;
import lombok.*;

import javax.persistence.*;

import java.util.List;
import java.util.stream.Collectors;

import static javax.persistence.FetchType.LAZY;

@Entity
@Getter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Wish {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = LAZY)
    @JoinColumn
    private User user;

    @EqualsAndHashCode.Include
    @ManyToOne(fetch = LAZY)
    @JoinColumn
    private Room room;

    public Wish(User user, Room room) {
        this.user = user;
        this.room = room;
    }

    public static WishResponse createWishResponse(Wish wish) {
        return WishResponse.builder()
                .wishId(wish.id)
                .roomImages(wish.room.getImages().stream().map(Image::getImage).collect(Collectors.toList()))
                .averageRating(wish.room.getAverageRating())
                .name(wish.room.getName())
                .pricePerNight(wish.room.getPricePerNight())
                .build();
    }

    public static List<WishResponse> createWishListResponse(List<Wish> wishList) {
       return wishList.stream().map(Wish::createWishResponse).collect(Collectors.toList());
    }

    public void addWish(Wish wish) {
        user.getWishes().add(wish);
    }

    public void removeWish() {
        user.getWishes().remove(this);
    }
}
