package com.example.airbnb.service;

import com.example.airbnb.dao.ImageDAO;
import com.example.airbnb.dao.LocationDAO;
import com.example.airbnb.dao.RoomDAO;
import com.example.airbnb.dto.PriceDTO;
import com.example.airbnb.dto.ReservationPriceDTO;
import com.example.airbnb.dto.RoomDetailDTO;
import com.example.airbnb.dto.RoomListDTO;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class RoomService {
    private RoomDAO roomDAO;
    private ImageDAO imageDAO;
    private LocationDAO locationDAO;

    public RoomService(RoomDAO roomDAO, ImageDAO imageDAO, LocationDAO locationDAO) {
        this.roomDAO = roomDAO;
        this.imageDAO = imageDAO;
        this.locationDAO = locationDAO;
    }

    public RoomDetailDTO getRoomDetail(Long id) {
        RoomDetailDTO roomDetailDTO = new RoomDetailDTO(
                roomDAO.getRoom(id),
                locationDAO.getLocation(id),
                imageDAO.getThumbImage(id),
                imageDAO.getDetailImages(id)
        );
        return roomDetailDTO;
    }


    public PriceDTO getAllPricesByCityAndDate(LocalDate checkIn, LocalDate checkOut, String cityName) {
        List<Long> reserveRoomList = new ArrayList<>(roomDAO.getAvailableDates(checkIn, checkOut));
        List<Long> roomListCity = new ArrayList<>(roomDAO.getRoomByCityName(cityName));

        for (int i = 0; i < reserveRoomList.size(); i++) {
            if (roomListCity.contains(reserveRoomList.get(i))) {
                roomListCity.remove(reserveRoomList.get(i));
            }
        }
        List<Integer> allPrices = new ArrayList<>(roomDAO.getAllPrices(roomListCity));
        Collections.sort(allPrices);
        return new PriceDTO(averagePrice(allPrices), allPrices);
    }

    public List<RoomListDTO> getRoomByCityAndReservationAndPriceAndGuest(LocalDate checkIn, LocalDate checkOut, String cityName, int minPrice, int maxPrice, int guestCount) {
        List<Long> roomListCity = new ArrayList<>(roomDAO.getRoomByCityName(cityName));
        List<Long> reserveRoomList = new ArrayList<>(roomDAO.getAvailableDates(checkIn, checkOut));
        List<Long> priceAndGuestList = new ArrayList<>(roomDAO.getRoomByPriceAnd(minPrice, maxPrice, guestCount));
        for (int i = 0; i < reserveRoomList.size(); i++) {
            if (roomListCity.contains(reserveRoomList.get(i))) {
                roomListCity.remove(reserveRoomList.get(i));
            }
        }
        for (int j = 0; j < priceAndGuestList.size(); j++) {
            if (roomListCity.contains(priceAndGuestList.get(j))) {
                roomListCity.remove(priceAndGuestList.get(j));
            }
        }

        int days = getPeriod(checkIn, checkOut);

        List<RoomListDTO> roomListDTO = new ArrayList<>();
        for (int k = 0; k< roomListCity.size(); k++) {
            roomListDTO.add(new RoomListDTO(roomDAO.getRoom(roomListCity.get(k)), imageDAO.getThumbImage(roomListCity.get(k)), days, locationDAO.getLocation(roomListCity.get(k))));
        }

        return roomListDTO;
    }

    private int getPeriod(LocalDate checkIn, LocalDate checkOut) {
        Long period = ChronoUnit.DAYS.between(checkIn, checkOut);
        int days = period.intValue();
        return days;
    }

    private int averagePrice(List<Integer> allPrices) {
        int sum = 0;
        int size = allPrices.size();
        for (int i = 0; i < allPrices.size(); i++) {
            sum += allPrices.get(i);
        }
        return sum / size;
    }

}
