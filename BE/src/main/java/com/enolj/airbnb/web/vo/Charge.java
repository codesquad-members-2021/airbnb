package com.enolj.airbnb.web.vo;

public class Charge {

    private int start;
    private int end;

    public Charge(int start, int end) {
        this.start = start;
        this.end = end;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    @Override
    public String toString() {
        return "Charge{" +
                "start=" + start +
                ", end=" + end +
                '}';
    }
}
