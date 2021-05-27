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
        // request dto에서 Accommodation 숙소도메인을 얻고 숙소를 등록한다. 반환된 id값을 request dto에 저장한다.
        Accommodation accommodation = totalAccommodationSaveRequestDto.toAccommodation();
        Long accommodationId = accommodationRepository.saveAccommodation(accommodation);
        totalAccommodationSaveRequestDto.setId(accommodationId);

        // request dto에서 숙소정보 도메인들을 얻는다. (숙박정보, 주소, 사진, 어메니티)
        AccommodationCondition condition = totalAccommodationSaveRequestDto.toCondition();
        AccommodationAddress address = totalAccommodationSaveRequestDto.toAddress();
        AccommodationPhoto photo = totalAccommodationSaveRequestDto.toPhoto();
        List<String> amenities = totalAccommodationSaveRequestDto.getAmenities();

        // 숙소정보(숙박정보, 주소, 사진, 어메니티)를 각 테이블에 저장한다.
        accommodationRepository.saveAccommodationCondition(condition);
        accommodationRepository.saveAccommodationAddress(address);
        accommodationRepository.saveAccommodationPhoto(photo);
        List<Long> amenityIds = accommodationRepository.findAmenityIdsByNames(amenities);
        accommodationRepository.addAmenitiesToAccommodation(amenityIds, accommodationId);
    }
}
