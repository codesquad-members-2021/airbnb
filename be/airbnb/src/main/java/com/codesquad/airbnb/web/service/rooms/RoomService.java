package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.domain.room.RoomRepository;
import com.codesquad.airbnb.web.dto.UserInput;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomService {

    private final RoomRepository roomRepository;

    public RoomService(RoomRepository roomRepository) {
        this.roomRepository = roomRepository;
    }

    public void showRooms(UserInput userInput) {
        List<Room> rooms = roomRepository.findRoomsByUserInput(userInput);

    }
}
