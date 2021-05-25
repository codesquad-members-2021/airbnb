package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.RoomRepository;
import org.springframework.stereotype.Service;

@Service
public class RoomService {

    private final RoomRepository roomRepository;

    public RoomService(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;
    }


}
