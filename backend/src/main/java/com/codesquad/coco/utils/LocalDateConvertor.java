package com.codesquad.coco.utils;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class LocalDateConvertor {

    private LocalDateConvertor() {
    }

    public static LocalDate StringToLocalDate(String date){
        return LocalDate.parse(date, DateTimeFormatter.ISO_DATE);
    }
}
