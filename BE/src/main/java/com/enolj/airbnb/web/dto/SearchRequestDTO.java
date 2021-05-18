package com.enolj.airbnb.web.dto;

public class SearchRequestDTO {

    private CheckDate date;
    private Charge charge;
    private People people;
    private Location location;

    public SearchRequestDTO(CheckDate date, Charge charge, People people, Location location) {
        this.date = date;
        this.charge = charge;
        this.people = people;
        this.location = location;
    }

    public void setDate(CheckDate date) {
        this.date = date;
    }

    public void setCharge(Charge charge) {
        this.charge = charge;
    }

    public void setPeople(People people) {
        this.people = people;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "SearchRequestDTO{" +
                "date=" + date +
                ", charge=" + charge +
                ", people=" + people +
                ", location=" + location +
                '}';
    }
}
