package com.enolj.airbnb.web.vo;

import java.time.LocalDate;

public class CheckDate {

    private LocalDate start;
    private LocalDate end;

    public CheckDate(LocalDate start, LocalDate end) {
        this.start = start;
        this.end = end;
    }

    public LocalDate getStart() {
        return start;
    }

    public void setStart(LocalDate start) {
        this.start = start;
    }

    public LocalDate getEnd() {
        return end;
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
