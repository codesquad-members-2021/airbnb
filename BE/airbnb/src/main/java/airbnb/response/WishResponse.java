package airbnb.response;

import lombok.Builder;
import lombok.Getter;
import java.util.List;

@Getter
@Builder
public class WishResponse {
    private final Long wishId;
    private final List<String> roomImages;
    private final double averageRating;
    private final String name;
    private final Integer pricePerNight;
}
