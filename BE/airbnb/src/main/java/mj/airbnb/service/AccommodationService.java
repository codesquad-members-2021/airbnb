package mj.airbnb.service;

import mj.airbnb.domain.accommodation.Accommodation;
import mj.airbnb.domain.accommodation.AccommodationRepository;
import mj.airbnb.web.dto.AccommodationInDetailResponseDto;
import mj.airbnb.web.dto.AccommodationResponseDto;
import mj.airbnb.web.dto.SearchRequestDto;
import org.springframework.stereotype.Service;

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

    public AccommodationInDetailResponseDto findAccommodationById(Long id) {
        return new AccommodationInDetailResponseDto(accommodationRepository.findById(id), accommodationRepository.findAllImagesByAccommodationId(id));
    }

    public List<String> findAllPopularDestinations(String destination) {
        return accommodationRepository.findPopularDestinations(destination).stream()
                .map(Accommodation::getAddress)
                .collect(Collectors.toList());
    }
}
