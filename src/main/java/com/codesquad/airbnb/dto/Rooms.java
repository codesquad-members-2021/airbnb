package com.codesquad.airbnb.dto;

import java.util.List;

public class Rooms {

    private List<RoomDTO> roomDTOS;

    public Rooms(List<RoomDTO> roomDTOS) {
        this.roomDTOS = roomDTOS;
    }

    public List<RoomDTO> getRooms() {
        return roomDTOS;
    }
}
