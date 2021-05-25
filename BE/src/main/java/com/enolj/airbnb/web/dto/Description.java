package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;

public class Description {

    private final String host;
    private final String option;
    private final int charge;

    public Description(String host, String option, int charge) {
        this.host = host;
        this.option = option;
        this.charge = charge;
    }

    public static Description createDescription(House house) {
        return new Description(house.getHost(), house.getOption(), house.getCharge());
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
