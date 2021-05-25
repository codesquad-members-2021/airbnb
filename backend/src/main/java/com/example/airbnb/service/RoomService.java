package com.example.airbnb.service;

import com.example.airbnb.utils.Calculators;
import com.example.airbnb.dao.ImageDAO;
import com.example.airbnb.dao.LocationDAO;
import com.example.airbnb.dao.RoomDAO;
import com.example.airbnb.dto.PriceDTO;
import com.example.airbnb.dto.RoomDetailDTO;
import com.example.airbnb.dto.RoomListDTO;
import com.example.airbnb.exception.NotFoundDataException;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class RoomService {
    private final RoomDAO roomDAO;
    private final ImageDAO imageDAO;
    private final LocationDAO locationDAO;

    public RoomService(RoomDAO roomDAO, ImageDAO imageDAO, LocationDAO locationDAO) {
        this.roomDAO = roomDAO;
        this.imageDAO = imageDAO;
        this.locationDAO = locationDAO;
    }

    public RoomDetailDTO getRoomDetail(Long id) {
        return new RoomDetailDTO(
                roomDAO.getRoom(id).orElseThrow(() -> new NotFoundDataException("해당하는 방이 없습니다.")),
                imageDAO.getThumbImage(id),
                imageDAO.getDetailImages(id)
        );
    }

    public PriceDTO getAllPricesByConditionsOfCityAndPeriod(LocalDate checkIn, LocalDate checkOut, String cityName) {
        List<Long> cityCondition = roomDAO.cityCondition(cityName);
        List<Long> periodCondition = roomDAO.periodCondition(checkIn, checkOut);
        List<Long> allConditions = Calculators.difference(cityCondition, periodCondition);

        List<Integer> allPrices = new ArrayList<>(roomDAO.getAllPrices(allConditions));
        Collections.sort(allPrices);
        return new PriceDTO(Calculators.averagePrice(allPrices), allPrices);
    }

    public List<RoomListDTO> getRoomsByConditionsOfCityAndPeriodAndPriceAndHeadcount(LocalDate checkIn, LocalDate checkOut, String cityName, int minPrice, int maxPrice, int guestCount) {
        List<Long> cityCondition = roomDAO.cityCondition(cityName);
        List<Long> periodCondition = roomDAO.periodCondition(checkIn, checkOut);
        List<Long> priceCondition = roomDAO.priceCondition(minPrice, maxPrice);
        List<Long> headcountCondition = roomDAO.headcountCondition(guestCount);

        List<Long> allConditions = Calculators.intersection(cityCondition, Calculators.intersection(priceCondition, headcountCondition));
        Calculators.difference(allConditions, periodCondition);
        int fewNights = Calculators.calculatePeriod(checkIn, checkOut);

        List<RoomListDTO> roomListDTO = new ArrayList<>();
        for (Long roomId : allConditions) {
            roomListDTO.add(new RoomListDTO(roomDAO.getRoom(roomId).orElseThrow(() -> new NotFoundDataException("해당하는 방이 없습니다.")),
                    imageDAO.getThumbImage(roomId),
                    fewNights
            ));
        }
        return roomListDTO;
    }

}


