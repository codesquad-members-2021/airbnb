package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dto.RoomDTO;
import com.codesquad.airbnb.exception.WishNotAddableException;
import com.codesquad.airbnb.exception.WishNotFoundException;
import com.codesquad.airbnb.repository.RoomRepository;
import com.codesquad.airbnb.repository.WishRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class RoomService {

    private RoomRepository roomRepository;
    private WishRepository wishRepository;

    public RoomService(RoomRepository roomRepository, WishRepository wishRepository) {
        this.roomRepository = roomRepository;
        this.wishRepository = wishRepository;
    }

    public List<RoomDTO> getRoomDTOS() {
        return roomRepository.findAll().stream()
                .map(RoomDTO::toRoomDTO)
                .collect(Collectors.toList());
    }

    public List<RoomDTO> getFilteredRoomDTOS(LocalDate checkIn, LocalDate checkOut, int minPrice, int maxPrice, int numberOfPeople) {
        return roomRepository.getFilteredRooms(checkIn, checkOut, minPrice, maxPrice, numberOfPeople).stream()
                .map(RoomDTO::toRoomDTO)
                .collect(Collectors.toList());
    }

    public void saveWish(Long roomId, Long userId) {
        if (!wishRepository.findByRoomIdAndUserId(roomId, userId).isEmpty()) {
            throw new WishNotAddableException();
        }
        wishRepository.insert(roomId, userId);
    }

    public void deleteWish(Long roomId, Long userId) {
        if (wishRepository.findByRoomIdAndUserId(roomId, userId).isEmpty()) {
            throw new WishNotFoundException();
        }
        wishRepository.delete(roomId, userId);
    }
}
