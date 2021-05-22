package mj.airbnb.service;

import mj.airbnb.domain.accommodation.Accommodation;
import mj.airbnb.domain.accommodation.AccommodationRepository;
import mj.airbnb.domain.reservation.ReservationDate;
import mj.airbnb.domain.reservation.ReservationRepository;
import mj.airbnb.web.AccommodationController;
import mj.airbnb.web.dto.AccommodationResponseDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AccommodationService {

    private final AccommodationRepository accommodationRepository;
    private final ReservationRepository reservationRepository;

    private final Logger logger = LoggerFactory.getLogger(AccommodationController.class);


    public AccommodationService(AccommodationRepository accommodationRepository, ReservationRepository reservationRepository) {
        this.accommodationRepository = accommodationRepository;
        this.reservationRepository = reservationRepository;
    }

    public List<AccommodationResponseDto> findAllAccommodations() {
        return accommodationRepository.findAll().stream()
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    public List<String> findAllPopularDestinations(String destination) {
        return accommodationRepository.findPopularDestinations(destination).stream()
                .map(Accommodation::getAddress)
                .collect(Collectors.toList());
    }

    public List<AccommodationResponseDto> findAllByDestination(String destination) {
        return accommodationRepository.findAllByDestination(destination).stream()
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    public List<AccommodationResponseDto> findAllByDestinationAndDate(
            String destination, String checkInDate, String checkOutDate) {

        return accommodationRepository.findAllByDestination(destination).stream()
                .filter(accommodation -> isAvailableToBook(accommodation.getId(), checkInDate, checkOutDate))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    // 해당 숙소의 reservedDate이 checkInDate과 checkOutDate 사이에 없다면 예약 가능한 상태
    // TODO: 21-05-11 형태의 문자열을 날짜로 바꿀 수 있는 함수 적용 필요함
    private boolean isAvailableToBook(Long accommodationId, String checkInDate, String checkOutDate) {
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate checkIn = LocalDate.parse(checkInDate, dateFormat);
        LocalDate checkOut = LocalDate.parse(checkOutDate, dateFormat);

        return reservationRepository.findALLReservationDateByAccommodationId(accommodationId).stream()
                .map(reservationDate -> LocalDate.parse(reservationDate.getReservedDate(), dateFormat))
                .noneMatch(dateTime -> ((dateTime.isEqual(checkIn) || dateTime.isAfter(checkIn))
                                        && (dateTime.isEqual(checkIn) || dateTime.isBefore(checkOut))));
    }
}
