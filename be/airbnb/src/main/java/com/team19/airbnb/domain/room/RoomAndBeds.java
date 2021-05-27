package com.team19.airbnb.domain.room;

public class RoomAndBeds {
    private int beds;
    private int bedRooms;
    private int bathRooms;

    RoomAndBeds(int beds, int bedRooms, int bathRooms) {
        this.beds = beds;
        this.bedRooms = bedRooms;
        this.bathRooms = bathRooms;
    }
}
