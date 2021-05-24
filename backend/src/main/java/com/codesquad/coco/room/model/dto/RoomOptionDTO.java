package com.codesquad.coco.room.model.dto;

public class RoomOptionDTO {

    private int bed;
    private int maxGuest;
    private int bathRoom;

    public RoomOptionDTO(int bed, int maxGuest, int bathRoom) {
        this.bed = bed;
        this.maxGuest = maxGuest;
        this.bathRoom = bathRoom;
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

}
