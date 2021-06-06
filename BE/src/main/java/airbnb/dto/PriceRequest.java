package airbnb.dto;

import airbnb.domain.Schedule;

public class PriceRequest {

    private final Long cityId;
    private final Schedule schedule;

    public PriceRequest(Long cityId, Schedule schedule) {
        this.cityId = cityId;
        this.schedule = schedule;
    }

    public Long getCityId() {
        return cityId;
    }

    public Schedule getSchedule() {
        return schedule;
    }
}
