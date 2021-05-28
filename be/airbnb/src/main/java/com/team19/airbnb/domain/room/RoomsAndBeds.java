package com.team19.airbnb.domain.room;

public class RoomsAndBeds {
    private int bed;
    private int bedRoom;
    private int bathRoom;

    RoomsAndBeds(int bed, int bedRoom, int bathRoom) {
        this.bed = bed;
        this.bedRoom = bedRoom;
        this.bathRoom = bathRoom;
    }

    public static RoomsAndBeds create(int bed, int bedRoom, int bathRoom) {
        return new RoomsAndBeds(bed, bedRoom, bathRoom);
    }

    public int getBed() {
        return bed;
    }

    public int getBedRoom() {
        return bedRoom;
    }

    public int getBathRoom() {
        return bathRoom;
    }
}
