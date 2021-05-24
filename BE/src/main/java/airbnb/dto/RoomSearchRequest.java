package airbnb.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.time.LocalDateTime;

public class RoomSearchRequest {

    @JsonProperty(value = "city")
    private final Long cityId;

    @JsonProperty(value = "people")
    private final int maxPersonCount;

    private final int maxPrice;
    private final int minPrice;
    private final LocalDateTime checkIn;
    private final LocalDateTime checkOut;

    public RoomSearchRequest(Long cityId, int maxPersonCount, int maxPrice, int minPrice, LocalDateTime checkIn, LocalDateTime checkOut) {
        this.cityId = cityId;
        this.maxPersonCount = maxPersonCount;
        this.maxPrice = maxPrice;
        this.minPrice = minPrice;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
    }

    public Long getCityId() {
        return cityId;
    }

    public int getMaxPersonCount() {
        return maxPersonCount;
    }

    public int getMaxPrice() {
        return maxPrice;
    }

    public int getMinPrice() {
        return minPrice;
    }

    public LocalDateTime getCheckIn() {
        return checkIn;
    }

    public LocalDateTime getCheckOut() {
        return checkOut;
    }
}
