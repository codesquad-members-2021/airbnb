package com.example.airbnb.service;

import com.example.airbnb.dao.ImageDAO;
import com.example.airbnb.dao.LocationDAO;
import com.example.airbnb.dao.ReservationDAO;
import com.example.airbnb.dao.RoomDAO;
import com.example.airbnb.dto.Receipt;
import com.example.airbnb.dto.ReservationDTO;
import com.example.airbnb.dto.RoomDTO;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

@Service
public class ReservationService {
    private RoomDAO roomDAO;
    private ImageDAO imageDAO;
    private LocationDAO locationDAO;
    private ReservationDAO reservationDAO;

    public ReservationService(RoomDAO roomDAO, ImageDAO imageDAO, LocationDAO locationDAO, ReservationDAO reservationDAO) {
        this.roomDAO = roomDAO;
        this.imageDAO = imageDAO;
        this.locationDAO = locationDAO;
        this.reservationDAO = reservationDAO;
    }

    public ReservationDTO reservationRoom(Long roomId, LocalDate checkIn, LocalDate checkOut, int guestCount) {

        RoomDTO roomDTO = roomDAO.getRoom(roomId);
        int days = getPeriod(checkIn, checkOut);
        int totalPrice = new Receipt(roomDTO, days).getTotalPrice();
        Long reservationId = reservationDAO.reservationRoom(roomId, checkIn, checkOut, guestCount, totalPrice);
        return reservationDAO.getReservationById(reservationId);
    }

    public boolean checkPeriod(Long roomId, LocalDate checkIn, LocalDate checkOut) {
        List<Long> periodRoomList = new ArrayList<>(roomDAO.getAvailableDates(checkIn, checkOut));
        return periodRoomList.contains(roomId);
    }

    public boolean checkNumGuest(Long roomId, int guestCount) {
        List<Long> exceedRoomList = new ArrayList<>(roomDAO.getRoomByExceedGuest(guestCount));
        return exceedRoomList.contains(roomId);
    }

    public void cancelReservation(Long reservationId) {
        reservationDAO.cancelReservationById(reservationId);
    }

    private int getPeriod(LocalDate checkIn, LocalDate checkOut) {
        Long period = ChronoUnit.DAYS.between(checkIn, checkOut);
        int days = period.intValue();
        return days;
    }

}
