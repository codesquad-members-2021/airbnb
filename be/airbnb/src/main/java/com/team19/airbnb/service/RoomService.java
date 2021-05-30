package com.team19.airbnb.service;

import com.team19.airbnb.domain.Booking.Booking;
import com.team19.airbnb.domain.Booking.Price;
import com.team19.airbnb.domain.room.Room;
import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.RoomPriceRequestDTO;
import com.team19.airbnb.dto.RoomPriceResponseDTO;
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

    public RoomPriceResponseDTO showEstimate(RoomPriceRequestDTO roomPriceRequestDTO, Long roomId) {
        Room room = roomDAO.findById(roomId).orElseThrow(RoomNotFoundException::new);
        Booking booking = roomPriceRequestDTO.toEntity(roomId);
        Price build = new Price.Builder(booking.countDays(), room.getPricePerDay()).build();
        return RoomPriceResponseDTO.create(new Price.Builder(booking.countDays(), room.getPricePerDay()).build());
    }

    public BigDecimal[] searchPriceRange(String address) {
        return roomDAO.findPriceByAddress(address);
    }

    public List<BigDecimal> searchPriceRangeTest(Double latitude, Double longitude) {
        return roomDAO.findPriceByAddressTest(latitude, longitude).stream()
                .map(Room::getPricePerDay)
                .collect(Collectors.toList());
    }

    public RoomDetailResponseDTO showRoomDetail() {
        final Room room = roomDAO.findById(1L).orElseThrow(RoomNotFoundException::new);
        return new RoomDetailResponseDTO.Builder(room).totalPrice(BigDecimal.valueOf(1000)).build();
    }
}
