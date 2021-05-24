package com.codesquad.coco.user;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    private ReservationDAO reservationDAO;

    public UserService(ReservationDAO reservationDAO) {
        this.reservationDAO = reservationDAO;
    }

    public void reservation(Long roomId, ReservationDTO reservationDTO){
        reservationDAO.reservation(roomId,reservationDTO);
    }
}
