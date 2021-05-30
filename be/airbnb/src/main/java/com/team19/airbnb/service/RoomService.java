package com.team19.airbnb.service;

import com.team19.airbnb.domain.room.Room;
import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.exception.RoomNotFoundException;
import com.team19.airbnb.repository.RoomDAO;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

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

    public BigDecimal[] searchPriceRange(String address) {
        return roomDAO.findPriceByAddress(address);
    }

    public List<BigDecimal> searchPriceRangeTest(Double latitude, Double longitude) {
        return roomDAO.findPriceByAddressTest(latitude, longitude).stream()
                .map(room -> room.getPricePerDay())
                .collect(Collectors.toList());
    }
}
