package mj.airbnb.web.dto;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

public class CreatingReservationRequestDto {

    private Long userId;
    private Long accommodationId;
    private LocalDate checkInDate;
    private LocalDate checkOutDate;
    private boolean deleted;

    public CreatingReservationRequestDto(){
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getAccommodationId() {
        return accommodationId;
    }

    public LocalDate getCheckInDate() {
        return checkInDate;
    }

    public LocalDate getCheckOutDate() {
        return checkOutDate;
    }

    public Map<String, Object> toMap() {
        Map<String, Object> values = new HashMap<>();
        values.put("user_id", userId);
        values.put("accommodation_id", accommodationId);
        values.put("check_in_date", checkInDate);
        values.put("check_out_date", checkOutDate);
        values.put("deleted", deleted);

        return values;
    }
}
