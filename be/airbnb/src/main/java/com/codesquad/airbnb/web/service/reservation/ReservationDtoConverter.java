package com.codesquad.airbnb.web.service.reservation;

import com.codesquad.airbnb.web.domain.reservation.Reservation;
import com.codesquad.airbnb.web.dto.ReservationDetail;
import org.springframework.stereotype.Service;

@Service
public class ReservationDtoConverter {
    public ReservationDetail reservationToReservationDetail(Reservation reservation) {
        return ReservationDetail.builder()
                .roomId(reservation.getRoomId())
                .guestId(reservation.getGuestId())
                .adultCount(reservation.getAdultCount())
                .childCount(reservation.getChildCount())
                .infantCount(reservation.getInfantCount())
                .checkinDateTime(reservation.getCheckinDateTime())
                .checkoutDateTime(reservation.getCheckoutDateTime())
                .build();
    }
}
