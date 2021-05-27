package team01.airbnb.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import team01.airbnb.domain.accommodation.Accommodation;
import team01.airbnb.domain.accommodation.AccommodationAddress;
import team01.airbnb.domain.accommodation.AccommodationCondition;
import team01.airbnb.domain.accommodation.AccommodationPhoto;
import team01.airbnb.dto.request.TotalAccommodationSaveRequestDto;
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

    public List<AccommodationResponseDto> findAvailableAccommodationsForReservation() {
        return accommodationRepository.findAvailableAccommodationsForReservation();
    }

    @Transactional
    public void save(TotalAccommodationSaveRequestDto totalAccommodationSaveRequestDto) {
        Long accommodationId = accommodationRepository.saveAccommodation(
                Accommodation.fromSaveRequestDto(totalAccommodationSaveRequestDto));
        totalAccommodationSaveRequestDto.setId(accommodationId);
        accommodationRepository.saveAccommodationAddress(
                AccommodationAddress.fromSaveRequestDto(totalAccommodationSaveRequestDto));
        accommodationRepository.saveAccommodationCondition(
                AccommodationCondition.fromSaveRequestDto(totalAccommodationSaveRequestDto));
        accommodationRepository.saveAccommodationPhoto(
                AccommodationPhoto.fromSaveRequestDto(totalAccommodationSaveRequestDto));
        List<Long> amenityIds = accommodationRepository.findAmenityIdsByNames(
                totalAccommodationSaveRequestDto.getAmenities());
        accommodationRepository.addAmenitiesToAccommodation(amenityIds, accommodationId);
    }
}
