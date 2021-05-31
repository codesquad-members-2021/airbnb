package com.codesquad.airbnb.accommodation.repository;

import com.codesquad.airbnb.accommodation.controller.AccommodationRequest;
import com.codesquad.airbnb.accommodation.domain.Accommodation;
import com.codesquad.airbnb.common.utils.DummyDataFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AccommodationRepository {
    public List<Accommodation> findAllBy(AccommodationRequest accommodationRequest) {
        return DummyDataFactory.accommodationsWithId();
    }

    public Accommodation findOne(long id) {
        return DummyDataFactory.accommodationsWithId().stream()
                       .filter(accommodation -> accommodation.getId() == id)
                       .findAny()
                       .get();
    }
}
