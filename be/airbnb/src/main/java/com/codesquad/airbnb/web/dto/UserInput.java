package com.codesquad.airbnb.web.dto;

import com.codesquad.airbnb.web.exceptions.InvalidUserInputException;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

import static com.codesquad.airbnb.web.exceptions.InvalidUserInputException.*;

@Getter
@Builder
@ToString
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class UserInput {
    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    private String location;
    private LocalDate checkIn;
    private LocalDate checkOut;
    private Integer adultCount;
    private Integer childCount;
    private Integer infantCount;
    private Integer priceMinimum;
    private Integer priceMaximum;

    public boolean checkStayDurationFilter() {
        boolean isNotNull = checkIn != null && checkOut != null;
        if(!isNotNull){
            return false;
        }
        long days = checkIn.until(checkOut, ChronoUnit.DAYS);
        if (days <= 0) {
            throw new InvalidUserInputException(NO_STAY_DAYS);
        }
        return true;
    }

    public boolean checkGuestCountFilter() {
        return adultCount != null && childCount != null && infantCount != null;
    }

    public boolean checkPriceRangeFilter() {
        boolean isNotNull = priceMinimum != null && priceMaximum != null;
        if (!isNotNull) {
            return false;
        }
        if (priceMinimum > priceMaximum) {
            throw new InvalidUserInputException(PRICE_RANGE_ERROR);
        }
        return true;
    }

    public int guestCount() {
        return adultCount + childCount + infantCount;
    }

    public long calculateStayingDays() {
        return checkIn.until(checkOut, ChronoUnit.DAYS);
    }
}
