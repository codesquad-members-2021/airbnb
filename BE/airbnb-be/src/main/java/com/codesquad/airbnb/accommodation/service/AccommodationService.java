package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.controller.AccommodationReservationInfo;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;

import java.util.List;

public interface AccommodationService {
    List<AccommodationResponse> readAll(AccommodationRequest accommodationRequest);

    AccommodationDTO readOne(long id);

    AccommodationReservationInfo accommodationReservationInfo(long id, AccommodationRequest accommodationRequest);
}
