package airbnb.dto;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class RoomSearchRequest {

    @JsonProperty(value = "city")
    private final Long cityId;

    @JsonProperty(value = "people")
    private final int maxPersonCount;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkIn;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkOut;

    private final int maxPrice;
    private final int minPrice;


    public RoomSearchRequest(Long cityId, int maxPersonCount, LocalDate checkIn, LocalDate checkOut, int maxPrice, int minPrice) {
        this.cityId = cityId;
        this.maxPersonCount = maxPersonCount;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.maxPrice = maxPrice;
        this.minPrice = minPrice;
    }

    public Long getCityId() {
        return cityId;
    }

    public int getMaxPersonCount() {
        return maxPersonCount;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public int getMaxPrice() {
        return maxPrice;
    }

    public int getMinPrice() {
        return minPrice;
    }
}
