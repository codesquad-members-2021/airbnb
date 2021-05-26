package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;
import com.enolj.airbnb.domain.join.Join;

public class Description {

    private final String host;
    private final String option;
    private final int charge;

    public Description(String host, String option, int charge) {
        this.host = host;
        this.option = option;
        this.charge = charge;
    }

    public static Description createDescription(House house, Join join) {
        return new Description(house.getHost(), join.makeOption(), house.getCharge());
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
