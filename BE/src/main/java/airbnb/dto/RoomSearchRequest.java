package airbnb.dto;

import airbnb.domain.Cost;
import airbnb.domain.Schedule;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RoomSearchRequest {

    private final Long cityId;
    private final Schedule schedule;

    @JsonProperty(value = "price")
    private final Cost cost;

    @JsonProperty(value = "people")
    private final int maxPersonCount;

    public RoomSearchRequest(Long cityId, int maxPersonCount, Schedule schedule, Cost cost) {
        this.cityId = cityId;
        this.maxPersonCount = maxPersonCount;
        this.schedule = schedule;
        this.cost = cost;
    }

    public Long getCityId() {
        return cityId;
    }

    public int getMaxPersonCount() {
        return maxPersonCount;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public Cost getPrice() {
        return cost;
    }
}
