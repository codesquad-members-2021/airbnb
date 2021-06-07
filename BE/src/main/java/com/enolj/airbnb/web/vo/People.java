package com.enolj.airbnb.web.vo;

public class People {

    private int guest;
    private int kid;

    public People(int guest, int kid) {
        this.guest = guest;
        this.kid = kid;
    }

    public int getGuest() {
        return guest;
    }

    public void setGuest(int guest) {
        this.guest = guest;
    }

    public int getKid() {
        return kid;
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
