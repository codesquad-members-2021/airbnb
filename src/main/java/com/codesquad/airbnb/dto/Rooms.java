package com.codesquad.airbnb.dto;

import com.codesquad.airbnb.domain.Room;

import java.util.List;

public class Rooms {
    private List<Room> rooms;

    public Rooms(List<Room> rooms) {
        this.rooms = rooms;
    }

    public List<Room> getRooms() {
        return rooms;
    }
}
