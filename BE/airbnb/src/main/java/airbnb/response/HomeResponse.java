package airbnb.response;

import airbnb.domain.Category;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.util.List;

@Getter
@RequiredArgsConstructor
public class HomeResponse {
    private final List<CityResponse> nearbyDestinations;
    private final List<Category> liveAnywhere;
}
