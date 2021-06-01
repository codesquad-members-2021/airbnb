package airbnb.response;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import java.util.List;

@Getter
@RequiredArgsConstructor
public class WishResponse {
    private final List<String> images;
    private final double averageRating;
    private final String name;
    private final Integer pricePerNight;
}
