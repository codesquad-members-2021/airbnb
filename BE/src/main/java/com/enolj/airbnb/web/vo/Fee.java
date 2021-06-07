package com.enolj.airbnb.web.vo;

public class Fee {

    private final int cleaning;
    private final int service;

    public Fee(int cleaning, int service) {
        this.cleaning = cleaning;
        this.service = service;
    }

    public int getCleaning() {
        return cleaning;
    }

    public int getService() {
        return service;
    }

    @Override
    public String toString() {
        return "Fee{" +
                "cleaning=" + cleaning +
                ", service=" + service +
                '}';
    }
}
