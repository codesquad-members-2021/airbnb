package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dao.ReservationDAO;
import com.codesquad.airbnb.domain.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {

    private ReservationDAO reservationDAO;

    @Autowired
    public ReservationService(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    public void createReservation(Reservation reservation) {
        reservationDAO.insertReservation(reservation);
    }

    public Reservation browseReservationById(Long reservationId) {
        return reservationDAO.findReservationById(reservationId);
    }

    public ReservationDetailDTO browseReservationDetailById(Long reservationId) {
        return reservationDAO.findDetailedReservation(reservationId);
    }
}
