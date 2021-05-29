package airbnb.repository;

import airbnb.domain.Room;
import airbnb.request.SearchRequest;
import airbnb.response.RoomResponse;

import java.util.List;

public interface CustomizedRoomRepository {
    List<Room> findFilteredRooms(SearchRequest searchRequest);
}
