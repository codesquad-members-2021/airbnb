package com.codesquad.airbnb.accommodation.domain.price;

import java.time.DayOfWeek;
import java.time.LocalDate;

public class Weekdays {
    private LocalDate startDate;
    private LocalDate endDate;

    private Weekdays(LocalDate startDate, LocalDate endDate) {
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public static Weekdays of(LocalDate startDate, LocalDate endDate) {
        return new Weekdays(startDate, endDate);
    }

    public int weeks() {
        int days = startDate.until(endDate).getDays();
        int dayOfWeekValue = startDate.getDayOfWeek().getValue();

        int weeks = (days + dayOfWeekValue % 7 + 1) / 7;

        return weeks;
    }

    public int days() {
        int days = startDate.until(endDate).getDays();

        int weeks = weeks();
        int weekends = 2 * weeks;
        int weekDays = Math.max(days - weekends, 0);

        if (startDate.getDayOfWeek() == DayOfWeek.SATURDAY) {
            weekDays++;
        }

        if (2 <= weekDays && endDate.getDayOfWeek() == DayOfWeek.SATURDAY) {
            weekDays++;
        }

        return weekDays;
    }
}
