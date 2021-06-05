package com.codesquad.coco.utils;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class LocalDateUtil {

    private LocalDateUtil() {
    }

    public static LocalDate StringToLocalDate(String date) {
        return LocalDate.parse(date, DateTimeFormatter.ISO_DATE);
    }

    public static int getAccommodationDay(LocalDate checkIn, LocalDate checkOut) {
        return (int) ChronoUnit.DAYS.between(checkIn, checkOut);
    }

    public static boolean betweenCheck(LocalDate targetDate, LocalDate startDate, LocalDate endDate) {
        return (targetDate.isAfter(startDate)) && (targetDate.isBefore(endDate));
    }
}
