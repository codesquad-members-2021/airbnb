package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.join.Join;
import com.enolj.airbnb.exception.EntityNotFoundException;
import com.enolj.airbnb.web.vo.CheckDate;
import com.enolj.airbnb.web.vo.People;

public class ReservationRequestDTO {

    private CheckDate date;
    private People people;
    private int totalCharge;

    public ReservationRequestDTO(CheckDate date, People people, int totalCharge) {
        this.date = date;
        this.people = people;
        this.totalCharge = totalCharge;
    }

    public Join toEntity() {
        if (date.getStart() == null || date.getEnd() == null || people.getGuest() == 0) {
            throw new EntityNotFoundException();
        }
        return new Join(date.getStart(), date.getEnd(), people.getGuest(), people.getKid(), totalCharge);
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
