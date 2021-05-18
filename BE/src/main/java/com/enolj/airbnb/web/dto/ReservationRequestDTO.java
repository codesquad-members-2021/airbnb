package com.enolj.airbnb.web.dto;

public class ReservationRequestDTO {

    private CheckDate date;
    private People people;

    public ReservationRequestDTO(CheckDate date, People people) {
        this.date = date;
        this.people = people;
    }

    public void setDate(CheckDate date) {
        this.date = date;
    }

    public void setPeople(People people) {
        this.people = people;
    }

    @Override
    public String toString() {
        return "ReservationRequestDTO{" +
                "date=" + date +
                ", people=" + people +
                '}';
    }
}
