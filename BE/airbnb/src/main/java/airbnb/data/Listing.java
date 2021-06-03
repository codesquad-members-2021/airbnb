package airbnb.data;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.ToString;

import java.util.List;

@Getter
@ToString
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class Listing {
    private int beds;
    private int bedrooms;
    private int bathrooms;
    private KickerContent kickerContent;
    private String name;
    private double lat;
    private double lng;
    private double avgRating;
    private int personCapacity;
    private String hostThumbnailUrl;
    private List<ContextualPicture> contextualPictures;
}
