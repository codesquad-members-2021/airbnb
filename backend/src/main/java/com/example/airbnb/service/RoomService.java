package com.example.airbnb.service;

import com.example.airbnb.dao.ImageDAO;
import com.example.airbnb.dao.LocationDAO;
import com.example.airbnb.dao.RoomDAO;
import com.example.airbnb.dto.PriceDTO;
import com.example.airbnb.dto.ReservationPriceDTO;
import com.example.airbnb.dto.RoomDetailDTO;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
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
            if(roomListCity.contains(reserveRoomList.get(i))) {
                roomListCity.remove(reserveRoomList.get(i));
            }
        }
        List<Integer> allPrices = new ArrayList<>(roomDAO.getAllPrices(roomListCity));
        Collections.sort(allPrices);
        return new PriceDTO(averagePrice(allPrices), allPrices);
    }

    private int averagePrice(List<Integer> allPrices) {
        int sum = 0;
        int size = allPrices.size();
        for (int i =0; i<allPrices.size(); i++) {
            sum += allPrices.get(i);
        }
        return sum/size;
    }
}
