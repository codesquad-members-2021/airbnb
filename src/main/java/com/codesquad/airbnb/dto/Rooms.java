package com.codesquad.airbnb.dto;

import java.util.List;

public class Rooms {

    private List<RoomResponse> roomResponses;

    public Rooms(List<RoomResponse> roomResponses) {
        this.roomResponses = roomResponses;
    }

    public List<RoomResponse> getRooms() {
        return roomResponses;
    }
}
