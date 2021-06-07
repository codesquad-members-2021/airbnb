package com.example.airbnb.utils;

import com.example.airbnb.exception.UnExpectedTimeFormat;

import java.time.LocalDate;

public class StringToLocalDate {
    public static LocalDate StringToLocalDate(String string) {
        // 2021-05-25
        if (string.length() == 10) {
            return LocalDate.parse(string);
        } else {
            throw new UnExpectedTimeFormat();
        }
    }


}
