package com.team19.airbnb.service;

import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.exception.RoomNotFoundException;
import com.team19.airbnb.repository.RoomDAO;
import org.springframework.stereotype.Service;

@Service
public class RoomService {

    private final RoomDAO roomDAO;

    public RoomService(RoomDAO roomDAO) {
        this.roomDAO = roomDAO;
    }

    public RoomDetailResponseDTO showRoom(Long id) {
        return new RoomDetailResponseDTO
                .Builder(roomDAO.findById(id).orElseThrow(RoomNotFoundException::new))
                .build();
    }
}
