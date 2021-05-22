package com.example.airbnb.service;

import com.example.airbnb.dao.ImageDAO;
import com.example.airbnb.dao.LocationDAO;
import com.example.airbnb.dao.RoomDAO;
import com.example.airbnb.dto.PriceDTO;
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
    private static final LocalDate DEFAULT_CHECK_IN = LocalDate.parse("2000-01-01");
    private static final LocalDate DEFAULT_CHECK_OUT = LocalDate.parse("2100-01-01");
    private static final int DEFAULT_MIN_PRICE = 0;
    private static final int DEFAULT_MAX_PRICE = 999999999;
    private static final int DEFAULT_MAX_GUEST = 9999;

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
                roomDAO.getRoom(id).orElseThrow(() -> new NullPointerException("해당하는 방이 없습니다.")),
                locationDAO.getLocation(id),
                imageDAO.getThumbImage(id),
                imageDAO.getDetailImages(id)
        );
    }

    public PriceDTO getAllPricesByConditionsOfCityAndPeriod(LocalDate checkIn, LocalDate checkOut, String cityName) {
        List<Long> cityCondition = roomDAO.cityCondition(cityName);
        List<Long> periodCondition = roomDAO.periodCondition(checkIn, checkOut);
        List<Long> allConditions = difference(cityCondition, periodCondition);

        List<Integer> allPrices = new ArrayList<>(roomDAO.getAllPrices(allConditions));
        Collections.sort(allPrices);
        return new PriceDTO(averagePrice(allPrices), allPrices);
    }

    public List<RoomListDTO> getRoomsByConditionsOfCityAndPeriodAndPriceAndHeadcount(LocalDate checkIn, LocalDate checkOut, String cityName, int minPrice, int maxPrice, int guestCount) {
        List<Long> cityCondition = roomDAO.cityCondition(cityName);
        List<Long> periodCondition = roomDAO.periodCondition(checkIn, checkOut);
        List<Long> priceCondition = roomDAO.priceCondition(minPrice, maxPrice);
        List<Long> headcountCondition = roomDAO.headcountCondition(guestCount);

        List<Long> allConditions = intersection(cityCondition, intersection(priceCondition, headcountCondition));
        for (Long roomId : periodCondition) {
            allConditions.remove(roomId);
        }
        int fewNights = calculatePeriod(checkIn, checkOut);

        List<RoomListDTO> roomListDTO = new ArrayList<>();
        for (Long roomId : allConditions) {
            roomListDTO.add(new RoomListDTO(roomDAO.getRoom(roomId).orElseThrow(() -> new NullPointerException("해당하는 방이 없습니다.")), imageDAO.getThumbImage(roomId), fewNights, locationDAO.getLocation(roomId)));
        }
        return roomListDTO;
    }

    private int calculatePeriod(LocalDate checkIn, LocalDate checkOut) {
        long period = ChronoUnit.DAYS.between(checkIn, checkOut);
        return (int) period;
    }

    private int averagePrice(List<Integer> allPrices) {
        int sum = 0;
        int size = allPrices.size();
        for (Integer allPrice : allPrices) {
            sum += allPrice;
        }
        return sum / size;
    }

    private List<Long> difference(List<Long> condition1, List<Long> condition2) {
        for (Long roomId : condition2) {
            condition1.remove(roomId);
        }
        return condition1;
    }

    private List<Long> intersection(List<Long> condition1, List<Long> condition2) {
        List<Long> list = new ArrayList<>();
        for (Long roomId : condition1) {
            if (condition2.contains(roomId)) {
                list.add(roomId);
            }
        }
        return list;
    }

}


