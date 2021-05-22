package com.codesquad.coco.rooms.model.dto;

public class RoomsOptionDTO {

    private int bed;
    private int maxGuest;
    private int bathRoom;

    public RoomsOptionDTO(int bed, int maxGuest, int bathRoom) {
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
