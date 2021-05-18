package com.enolj.airbnb.web.dto;

public class People {

    private int guest;
    private int kid;

    public People(int guest, int kid) {
        this.guest = guest;
        this.kid = kid;
    }

    public void setGuest(int guest) {
        this.guest = guest;
    }

    public void setKid(int kid) {
        this.kid = kid;
    }

    @Override
    public String toString() {
        return "People{" +
                "quest=" + guest +
                ", kid=" + kid +
                '}';
    }
}
