package com.team19.airbnb.domain.room;

public class RoomsAndBeds {
    private int beds;
    private int bedRooms;
    private int bathRooms;

    RoomsAndBeds(int beds, int bedRooms, int bathRooms) {
        this.beds = beds;
        this.bedRooms = bedRooms;
        this.bathRooms = bathRooms;
    }

    public static RoomsAndBeds create(int beds, int bedRooms, int bathRooms) {
        return new RoomsAndBeds(beds, bedRooms, bathRooms);
    }

    public int getBeds() {
        return beds;
    }

    public int getBedRooms() {
        return bedRooms;
    }

    public int getBathRooms() {
        return bathRooms;
    }
}
