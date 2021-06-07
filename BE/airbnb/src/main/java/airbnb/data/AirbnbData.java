package airbnb.data;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Getter;
import lombok.ToString;

import java.util.List;

@ToString
@Getter
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class AirbnbData {
    private List<ExploreTab> exploreTabs;
}
