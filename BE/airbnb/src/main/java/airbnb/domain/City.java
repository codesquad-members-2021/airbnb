package airbnb.domain;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Getter;
import org.springframework.data.annotation.Id;

@Getter
public class City {
    @JsonIgnore
    @Id
    private Long id;

    private String name;
    private String driveTime;
    private String image;

    public City(String name, String driveTime, String image) {
        this.name = name;
        this.driveTime = driveTime;
        this.image = image;
    }

}
