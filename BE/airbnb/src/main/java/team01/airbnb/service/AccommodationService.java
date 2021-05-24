package team01.airbnb.service;

import org.springframework.stereotype.Service;
import team01.airbnb.domain.accommodation.Accommodation;
import team01.airbnb.dto.response.AccommodationResponseDto;
import team01.airbnb.repository.AccommodationRepository;

import java.util.List;

@Service
public class AccommodationService {

    private final AccommodationRepository accommodationRepository;

    public AccommodationService(AccommodationRepository accommodationRepository) {
        this.accommodationRepository = accommodationRepository;
    }

    public List<Accommodation> accommodations() {
        return accommodationRepository.findAllAccommodations();
    }

    public List<AccommodationResponseDto> findAccommodationsBySearch() {
        return accommodationRepository.findAccommodationsBySearch();
    }
}
