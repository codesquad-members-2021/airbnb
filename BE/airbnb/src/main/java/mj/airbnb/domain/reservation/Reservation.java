package mj.airbnb.domain.reservation;

import org.springframework.data.annotation.Id;

import java.util.HashMap;
import java.util.Map;

public class Reservation {

    @Id
    private Long id;
    private String checkInDate;
    private String checkOutDate;
    private Long accommodationId;

    public Reservation() {
    }

    public Map<String, Object> toMap() {
        Map<String, Object> values = new HashMap<>();
        values.put("id", id);
        values.put("check_in_date", checkInDate);
        values.put("check_out_date", checkOutDate);
        values.put("accommodation_id", accommodationId);

        return values;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(String checkInDate) {
        this.checkInDate = checkInDate;
    }

    public String getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(String checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public Long getAccommodationId() {
        return accommodationId;
    }

    public void setAccommodationId(Long accommodationId) {
        this.accommodationId = accommodationId;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "id=" + id +
                ", checkInDate='" + checkInDate + '\'' +
                ", checkOutDate='" + checkOutDate + '\'' +
                ", accommodationId=" + accommodationId +
                '}';
    }
}
