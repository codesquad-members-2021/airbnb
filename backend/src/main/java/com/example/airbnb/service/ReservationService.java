package com.example.airbnb.service;

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
    private final RoomDAO roomDAO;
    private final ReservationDAO reservationDAO;

    public ReservationService(RoomDAO roomDAO, ReservationDAO reservationDAO) {
        this.roomDAO = roomDAO;
        this.reservationDAO = reservationDAO;
    }

    public ReservationDTO reservationRoom(Long roomId, LocalDate checkIn, LocalDate checkOut, int guestCount) {
        RoomDTO roomDTO = roomDAO.getRoom(roomId).orElseThrow(() -> new NullPointerException("해당하는 방이 없습니다."));
        int days = getPeriod(checkIn, checkOut);
        int totalPrice = new Receipt(roomDTO, days).getTotalPrice();
        Long reservationId = reservationDAO.reservationRoom(roomId, checkIn, checkOut, guestCount, totalPrice);
        return reservationDAO.getReservationByReservationId(reservationId).orElseThrow(() -> new NullPointerException("해당하는 예약이 없습니다."));
    }

    public boolean checkPeriodCondition(Long roomId, LocalDate checkIn, LocalDate checkOut) {
        List<Long> periodRoomList = new ArrayList<>(roomDAO.periodCondition(checkIn, checkOut));
        return periodRoomList.contains(roomId);
    }

    public boolean checkHeadcountCondition(Long roomId, int guestCount) {
        List<Long> exceedRoomList = new ArrayList<>(roomDAO.headcountCondition(guestCount));
        return exceedRoomList.contains(roomId);
    }

    public void cancelReservation(Long reservationId) {
        reservationDAO.cancelReservationById(reservationId);
    }

    private int getPeriod(LocalDate checkIn, LocalDate checkOut) {
        long period = ChronoUnit.DAYS.between(checkIn, checkOut);
        return (int) period;
    }

}
