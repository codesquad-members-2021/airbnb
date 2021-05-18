package com.enolj.airbnb.web.dto;

public class SearchChargesRequestDTO {

    private CheckDate date;
    private Location location;

    public SearchChargesRequestDTO(CheckDate date, Location location) {
        this.date = date;
        this.location = location;
    }

    public void setDate(CheckDate date) {
        this.date = date;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "SearchChargesRequestDTO{" +
                "date=" + date +
                ", location=" + location +
                '}';
    }
}


//        {
//        "date": {
//        "start": "2021-05-18",
//        "end": "2021-05-25"
//        },
//        "location": {
//        "latitude": 37.566826,
//        "longitude": 126.9786567
//        }
//        }
