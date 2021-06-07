package airbnb.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Getter
@Builder
@AllArgsConstructor
public class SearchRequest {
    private final String placeId;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkIn;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkOut;
    private final Integer priceMin;
    private final Integer priceMax;
    private final Integer adults;
    private final Integer children;
    private final Integer infants;
}
