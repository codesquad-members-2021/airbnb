package com.team19.airbnb.service;

import com.team19.airbnb.domain.Booking.Booking;
import com.team19.airbnb.domain.Booking.Price;
import com.team19.airbnb.domain.room.Room;
import com.team19.airbnb.dto.RoomDetailResponseDTO;
import com.team19.airbnb.dto.RoomPriceRequestDTO;
import com.team19.airbnb.dto.RoomPriceResponseDTO;
import com.team19.airbnb.dto.SearchRequestDTO;
import com.team19.airbnb.exception.notfound.ConditionNotFoundException;
import com.team19.airbnb.exception.notfound.NotFoundException;
import com.team19.airbnb.exception.notfound.RoomNotFoundException;
import com.team19.airbnb.exception.notfound.UserNotFoundException;
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

    public List<BigDecimal> searchPriceRange(Double latitude, Double longitude) {
        return roomDAO.findPriceByAddress(latitude, longitude).stream()
                .map(room -> room.getPricePerDay())
                .collect(Collectors.toList());
    }

    public List<RoomDetailResponseDTO> searchRoomsByCondition(SearchRequestDTO searchRequestDTO) {
        if(searchRequestDTO.getCheckIn() == null && searchRequestDTO.getCheckOut() == null && searchRequestDTO.getCoordinate() == null
                && searchRequestDTO.getGuest() == null && searchRequestDTO.getMinPrice() == null && searchRequestDTO.getMaxPrice() == null) {
            throw new ConditionNotFoundException();
        }
        if(searchRequestDTO.getCheckIn() != null && searchRequestDTO.getCheckOut() != null) {
            Booking booking = searchRequestDTO.toBooking();
            return roomDAO.findRoomsByCondition(searchRequestDTO).stream()
                    .map((room) -> new RoomDetailResponseDTO.Builder(room).totalPrice(booking.calculateTotalPrice(room.getPricePerDay())).build())
                    .collect(Collectors.toList());
        }
        return roomDAO.findRoomsByCondition(searchRequestDTO).stream()
                .map((room) -> new RoomDetailResponseDTO.Builder(room).build())
                .collect(Collectors.toList());
    }

    public Room findRoomById(Long id) {
        return roomDAO.findById(id).orElseThrow(UserNotFoundException::new);
    }
}
