package com.team19.airbnb.repository;

import com.team19.airbnb.domain.room.Room;
import org.springframework.data.repository.CrudRepository;

public interface RoomRepository extends CrudRepository<Room, Long> {
}
