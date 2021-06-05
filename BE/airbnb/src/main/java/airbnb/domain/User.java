package airbnb.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import java.util.*;

@Entity
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private Long id;

    private String name;
    private String email;
    private String githubId;
    private String profileImage;

    @JsonIgnore
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private final List<Booking> bookings = new ArrayList<>();

    @JsonIgnore
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private final List<Wish> wishes = new ArrayList<>();

    public Optional<User> addWish(Room room) {
        Wish wish = new Wish(this, room);
        if (!this.getWishes().contains(wish)) {
            wish.addWish(wish);
            return Optional.of(this);
        }
        return Optional.empty();
    }
}
