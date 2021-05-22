package com.enolj.airbnb.web.dto;

public class ReservationRequestDTO {

    private CheckDate date;
    private People people;
    private int totalCharge;

    public ReservationRequestDTO(CheckDate date, People people, int totalCharge) {
        this.date = date;
        this.people = people;
        this.totalCharge = totalCharge;
    }

    public void setDate(CheckDate date) {
        this.date = date;
    }

    public void setPeople(People people) {
        this.people = people;
    }

    public void setTotalCharge(int totalCharge) {
        this.totalCharge = totalCharge;
    }

    @Override
    public String toString() {
        return "ReservationRequestDTO{" +
                "date=" + date +
                ", people=" + people +
                ", totalCharge=" + totalCharge +
                '}';
    }
}
