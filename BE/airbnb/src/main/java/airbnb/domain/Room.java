package airbnb.domain;

import lombok.Getter;
import org.springframework.data.annotation.Id;

import javax.xml.stream.Location;

@Getter
public class Room {
    @Id
    private Long id;

    private String name;
    private Location location;
    private double averageRating;
    private boolean wish;

    public Room(Long id, String name) {
        this.id = id;
        this.name = name;
    }
}
