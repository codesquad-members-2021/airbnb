package com.example.airbnb.utils;

import com.example.airbnb.exception.NotFoundDataException;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

public class Calculators {

    public static int calculatePeriod(LocalDate checkIn, LocalDate checkOut) {
        long period = ChronoUnit.DAYS.between(checkIn, checkOut);
        return (int) period;
    }

    public static int averagePrice(List<Integer> allPrices) {
        double average = allPrices.stream()
                .mapToDouble(Integer::doubleValue)
                .average()
                .orElseThrow(() -> new NotFoundDataException("가격이 없습니다"));
        return (int) average;
    }

    public static List<Long> difference(List<Long> condition1, List<Long> condition2) {
        for (Long roomId : condition2) {
            condition1.remove(roomId);
        }
        return condition1;
    }

    public static List<Long> intersection(List<Long> condition1, List<Long> condition2) {
        List<Long> list = new ArrayList<>();
        for (Long roomId : condition1) {
            if (condition2.contains(roomId)) {
                list.add(roomId);
            }
        }
        return list;
    }

}
