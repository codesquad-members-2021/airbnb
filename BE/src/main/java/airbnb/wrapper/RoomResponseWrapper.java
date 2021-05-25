package airbnb.wrapper;

import airbnb.dto.RoomResponse;

import java.util.List;

public class RoomResponseWrapper {

    private List<RoomResponse> rooms;

    public RoomResponseWrapper(List<RoomResponse> rooms) {
        this.rooms = rooms;
    }

    public List<RoomResponse> getRooms() {
        return rooms;
    }
}
