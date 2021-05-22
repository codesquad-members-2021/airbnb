package mj.airbnb.service;

import mj.airbnb.domain.accommodation.Accommodation;
import mj.airbnb.domain.accommodation.AccommodationRepository;
import mj.airbnb.web.dto.AccommodationResponseDto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AccommodationService {

    private final AccommodationRepository accommodationRepository;

    public AccommodationService(AccommodationRepository accommodationRepository){
        this.accommodationRepository = accommodationRepository;
    }

    public List<AccommodationResponseDto> findAllAccommodations(){
        return accommodationRepository.findAll().stream()
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    public List<String> findAllPopularDestinations(String destination){
        return accommodationRepository.findPopularDestinations(destination).stream()
                .map(Accommodation::getAddress)
                .collect(Collectors.toList());
    }
}
