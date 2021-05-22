package com.codesquad.coco.rooms.model.dto;

import java.util.List;

public class SearchRoomsListDTO {

    private List<RoomsListDTO> rooms;

    public SearchRoomsListDTO(List<RoomsListDTO> rooms) {
        this.rooms = rooms;
    }

    public List<RoomsListDTO> getRooms() {
        return rooms;
    }
}
