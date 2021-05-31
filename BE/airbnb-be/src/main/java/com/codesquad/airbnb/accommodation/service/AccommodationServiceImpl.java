package com.codesquad.airbnb.accommodation.service;

import com.codesquad.airbnb.accommodation.controller.AccommodationDTO;
import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.controller.AccommodationReservationInfo;
import com.codesquad.airbnb.accommodation.controller.AccommodationResponse;
import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.accommodation.repository.AccommodationRepository;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Profile("default")
public class AccommodationServiceImpl implements AccommodationService {

    private AccommodationRepository accommodationRepository;

    public AccommodationServiceImpl(AccommodationRepository accommodationRepository) {
        this.accommodationRepository = accommodationRepository;
    }

    @Override
    public List<AccommodationResponse> readAll(AccommodationRequest accommodationRequest) {
        return accommodationRepository.findAllBy(accommodationRequest).stream()
                       .map(AccommodationResponse::from)
                       .collect(Collectors.toList());
    }

    @Override
    public AccommodationDTO readOne(long id) {
        return AccommodationDTO.from(accommodationRepository.findOne(id));
    }
}
