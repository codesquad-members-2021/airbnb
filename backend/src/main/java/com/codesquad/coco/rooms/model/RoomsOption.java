package com.codesquad.coco.rooms.model;

public class RoomsOption {

    private int bed;
    private int maxGuest;
    private int bathRoom;
    private String type;

    public RoomsOption(int bed, int maxGuest, int bathRoom, String type) {
        this.bed = bed;
        this.maxGuest = maxGuest;
        this.bathRoom = bathRoom;
        this.type = type;
    }

    public int getBed() {
        return bed;
    }

    public int getMaxGuest() {
        return maxGuest;
    }

    public int getBathRoom() {
        return bathRoom;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return "RoomsOption{" +
                "bed=" + bed +
                ", maxGuest=" + maxGuest +
                ", bathRoom=" + bathRoom +
                ", type='" + type + '\'' +
                '}';
    }
}
