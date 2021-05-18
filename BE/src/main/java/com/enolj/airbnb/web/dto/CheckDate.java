package com.enolj.airbnb.web.dto;

import java.time.LocalDate;

public class CheckDate {

    private LocalDate start;
    private LocalDate end;

    public CheckDate(LocalDate start, LocalDate end) {
        this.start = start;
        this.end = end;
    }

    public void setStart(LocalDate start) {
        this.start = start;
    }

    public void setEnd(LocalDate end) {
        this.end = end;
    }

    @Override
    public String toString() {
        return "CheckDate{" +
                "start=" + start +
                ", end=" + end +
                '}';
    }
}
