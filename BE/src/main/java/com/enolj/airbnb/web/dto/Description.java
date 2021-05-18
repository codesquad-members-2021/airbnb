package com.enolj.airbnb.web.dto;

public class Description {

    private final String host;
    private final String option;
    private final int charge;

    public Description(String host, String option, int charge) {
        this.host = host;
        this.option = option;
        this.charge = charge;
    }

    public String getHost() {
        return host;
    }

    public String getOption() {
        return option;
    }

    public int getCharge() {
        return charge;
    }
}
