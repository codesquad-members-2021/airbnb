package com.codesquad.airbnb.accommodation.repository;

import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.common.dummydata.AccommodationDummyDataFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AccommodationRepository {
    public List<Accommodation> findAllBy(AccommodationRequest accommodationRequest) {
        return AccommodationDummyDataFactory.listWithId();
    }

    public Accommodation findOne(long id) {
        return AccommodationDummyDataFactory.listWithId().stream()
                       .filter(accommodation -> accommodation.getId() == id)
                       .findAny()
                       .get();
    }
}
