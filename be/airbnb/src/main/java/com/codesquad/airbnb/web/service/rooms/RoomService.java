package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.domain.room.RoomRepository;
import com.codesquad.airbnb.web.dto.RoomPreviews;
import com.codesquad.airbnb.web.dto.UserInput;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomService {

    private final RoomRepository roomRepository;
    private final RoomDtoConverter roomDtoConverter;

    public RoomService(RoomRepository roomRepository, RoomDtoConverter roomDtoConverter) {
        this.roomRepository = roomRepository;
        this.roomDtoConverter = roomDtoConverter;
    }

    public RoomPreviews showRooms(UserInput userInput) {
        List<Room> rooms = roomRepository.findRoomsByUserInput(userInput);
        return roomDtoConverter.roomsToRoomPreviews(rooms, userInput.calculateStayingDays());
    }
}
