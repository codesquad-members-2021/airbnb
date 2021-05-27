package mj.airbnb.service;

import mj.airbnb.domain.accommodation.Accommodation;
import mj.airbnb.domain.accommodation.AccommodationRepository;
import mj.airbnb.domain.reservation.ReservationRepository;
import mj.airbnb.web.AccommodationController;
import mj.airbnb.web.dto.AccommodationResponseDto;
import mj.airbnb.web.dto.SearchRequestDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class AccommodationService {

    private final AccommodationRepository accommodationRepository;

    public AccommodationService(AccommodationRepository accommodationRepository) {
        this.accommodationRepository = accommodationRepository;
    }

    public List<AccommodationResponseDto> searchAccommodationsByConditions(SearchRequestDto conditions) {
        return accommodationRepository.findAllByConditions(conditions).stream()
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    public List<String> findAllPopularDestinations(String destination) {
        return accommodationRepository.findPopularDestinations(destination).stream()
                .map(Accommodation::getAddress)
                .collect(Collectors.toList());
    }
}
