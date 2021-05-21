package com.example.airbnb.dto;

import java.util.List;

public class RoomList {
    private List<RoomListDTO> roomList;

    public RoomList(List<RoomListDTO> roomList) {
        this.roomList = roomList;
    }

    public List<RoomListDTO> getRoomList() {
        return roomList;
    }
}
