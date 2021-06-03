package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Profile("default")
public class AccommodationServiceImpl implements AccommodationService{
    @Override
    public List<AccommodationResponse> readAll(AccommodationRequest accommodationRequest) {
        return null;
    }

    @Override
    public AccommodationDTO readOne(long id) {
        return null;
    }
}
