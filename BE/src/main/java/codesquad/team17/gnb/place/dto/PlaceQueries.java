package codesquad.team17.gnb.place.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

public class PlaceQueries {

    private final String district;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkIn;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private final LocalDate checkOut;

    private final Integer minPrice;
    private final Integer maxPrice;

    private final int adult;
    private final int child;
    private final int infant;

    public PlaceQueries(String district, LocalDate checkIn, LocalDate checkOut, Integer minPrice, Integer maxPrice, Integer adult, Integer child, Integer infant) {
        if (adult == null || adult < 0) {
            adult = 1;
        }

        if (child == null || child < 0) {
            child = 0;
        }

        if (infant == null || infant < 0) {
            infant = 0;
        }

        this.district = district;
        this.checkIn = checkIn;
        this.checkOut = checkOut;
        this.minPrice = minPrice;
        this.maxPrice = maxPrice;
        this.adult = adult;
        this.child = child;
        this.infant = infant;
    }

    public String getDistrict() {
        return district;
    }

    public LocalDate getCheckIn() {
        return checkIn;
    }

    public LocalDate getCheckOut() {
        return checkOut;
    }

    public Integer getMinPrice() {
        return minPrice;
    }

    public Integer getMaxPrice() {
        return maxPrice;
    }

    public int getAdult() {
        return adult;
    }

    public int getChild() {
        return child;
    }

    public int getInfant() {
        return infant;
    }

    public int sumOfPeople() {
        return adult + child;
    }
}
