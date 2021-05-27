package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dao.PropertyDAO;
import com.codesquad.airbnb.dao.ReservationDAO;
import com.codesquad.airbnb.domain.Reservation;
import com.codesquad.airbnb.dto.PriceInfoDTO;
import com.codesquad.airbnb.dto.PropertyDetailResponseDTO;
import com.codesquad.airbnb.dto.ReservationDetailDTO;
import com.codesquad.airbnb.dto.ReservationRequestDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.temporal.ChronoUnit;

@Service
public class ReservationService {

    private ReservationDAO reservationDAO;
    private PropertyDAO propertyDAO;

    @Autowired
    public ReservationService(ReservationDAO reservationDAO, PropertyDAO propertyDAO) {
        this.reservationDAO = reservationDAO;
        this.propertyDAO = propertyDAO;
    }

    public void insertReservation(Reservation reservation) {
        reservationDAO.insertReservation(reservation);
    }

    public Reservation browseReservationById(Long reservationId) {
        return reservationDAO.findReservationById(reservationId);
    }

    public ReservationDetailDTO browseReservationDetailById(Long reservationId) {
        return reservationDAO.findDetailedReservation(reservationId);
    }

    public PriceInfoDTO browsePriceInfoReservation(Long propertyId, ReservationRequestDTO reservationRequestDTO) {
        PropertyDetailResponseDTO propertyDetail = propertyDAO.findPropertyDetailByPropertyId(propertyId);
        PriceInfoDTO priceInfoDTO = new PriceInfoDTO();

        int days = (int) ChronoUnit.DAYS.between(reservationRequestDTO.getCheckIn(), reservationRequestDTO.getCheckOut());

        priceInfoDTO.setPriceForDays(propertyDetail.getPricePerNight(), days);
        priceInfoDTO.setCleaningFee(propertyDetail.getCleaningFee());
        priceInfoDTO.setServiceFee();
        priceInfoDTO.setTax();

        return priceInfoDTO;
    }

    public void createReservation(Long propertyId, ReservationRequestDTO reservationRequestDTO) {
        reservationDAO.insertReservation(new Reservation(reservationRequestDTO.getCheckIn(),
                reservationRequestDTO.getCheckOut(),
                reservationRequestDTO.getTotalPrice(),
                reservationRequestDTO.getGuestCount(),
                1L, // TODO: 유저가 제대로 구현되면 로직 입력
                propertyId));
    }
}
