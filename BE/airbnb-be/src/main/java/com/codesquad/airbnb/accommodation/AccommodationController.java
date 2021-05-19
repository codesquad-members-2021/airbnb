package com.codesquad.airbnb.accommodation;

import com.codesquad.airbnb.utils.DummyDataFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AccommodationController {

    @GetMapping("/accommodations")
    public List<AccommodationResponseDTO> readAll() {
        List<AccommodationResponseDTO> result = DummyDataFactory.accommodationResponseDTOs();

        for (int i = 0; i < result.size(); i++) {
            result.get(i).setId(Long.valueOf(i + 1));
        }

        return result;
    }
}
