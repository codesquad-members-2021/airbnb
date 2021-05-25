package com.codesquad.airbnb.web.domain.room;

import java.util.Optional;

public interface RoomRepository {
    Room save(Room room);

    Optional<Room> findRoomById(int id);
}
