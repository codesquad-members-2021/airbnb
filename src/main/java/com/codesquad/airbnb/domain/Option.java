package com.codesquad.airbnb.domain;

public class Option {
    private boolean kitchen;
    private boolean airConditioner;
    private boolean wifi;
    private boolean freeParkingLot;
    private boolean hairDryer;

    public Option(boolean kitchen, boolean airConditioner, boolean wifi, boolean freeParkingLot, boolean hairDryer) {
        this.kitchen = kitchen;
        this.airConditioner = airConditioner;
        this.wifi = wifi;
        this.freeParkingLot = freeParkingLot;
        this.hairDryer = hairDryer;
    }

    public boolean isKitchen() {
        return kitchen;
    }

    public boolean isAirConditioner() {
        return airConditioner;
    }

    public boolean isWifi() {
        return wifi;
    }

    public boolean isFreeParkingLot() {
        return freeParkingLot;
    }

    public boolean isHairDryer() {
        return hairDryer;
    }
}
