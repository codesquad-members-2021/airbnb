package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationDetailResponse;
import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.controller.AccommodationReservationInfo;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;

import java.util.List;

public interface AccommodationService {
    List<AccommodationResponse> readAll(AccommodationRequest accommodationRequest);

    AccommodationDetailResponse readOne(long id);

    AccommodationReservationInfo accommodationReservationInfo(long id, AccommodationRequest accommodationRequest);
}
