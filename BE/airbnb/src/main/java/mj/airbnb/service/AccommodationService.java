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
    private final ReservationRepository reservationRepository;
    private final Logger logger = LoggerFactory.getLogger(AccommodationController.class);

    public AccommodationService(AccommodationRepository accommodationRepository, ReservationRepository reservationRepository) {
        this.accommodationRepository = accommodationRepository;
        this.reservationRepository = reservationRepository;
    }

    public List<AccommodationResponseDto> searchAccommodationsByConditions(SearchRequestDto conditions) {

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions) &&
                isPresentOfPrice(conditions) && isPresentOfPeople(conditions)) {

            logger.info("지역, 날짜, 가격, 인원 조건 따라 숙소 조회 ");
            return findAllByDestinationAndDateAndPriceAndPeople(conditions);
        }

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions) && isPresentOfPrice(conditions)) {

            logger.info("지역, 날짜, 가격 조건에 따라 숙소 조회 ");
            return findAllByDestinationAndDateAndPrice(conditions);
        }

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions)) {

            logger.info("지역, 날짜 조건에 따라 숙소 조회 ");
            return findAllByDestinationAndDate(conditions);
        }

        if (isPresentOfDestination(conditions)) {

            logger.info("지역 조건에 따라 숙소 조회 ");
            return findAllByDestination(conditions);
        }

        logger.info("모든 숙소 조회 ");
        return findAllAccommodations();
    }

    public List<String> findAllPopularDestinations(String destination) {
        return accommodationRepository.findPopularDestinations(destination).stream()
                .map(Accommodation::getAddress)
                .collect(Collectors.toList());
    }

    private List<AccommodationResponseDto> findAllAccommodations() {
        return accommodationRepository.findAll().stream()
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }


    private List<AccommodationResponseDto> findAllByDestination(SearchRequestDto requestDto) {
        return accommodationRepository.findAllByDestination(requestDto.getDestination()).stream()
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private List<AccommodationResponseDto> findAllByDestinationAndDate(SearchRequestDto requestDto) {

        return accommodationRepository.findAllByDestination(requestDto.getDestination()).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), requestDto))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private List<AccommodationResponseDto> findAllByDestinationAndDateAndPrice(SearchRequestDto requestDto) {

        return accommodationRepository.findAllByDestination(requestDto.getDestination()).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), requestDto)
                        && isAvailableCost(accommodation.getPrice(), requestDto))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private List<AccommodationResponseDto> findAllByDestinationAndDateAndPriceAndPeople(SearchRequestDto requestDto) {

        return accommodationRepository.findAllByDestination(requestDto.getDestination()).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), requestDto)
                        && isAvailableCost(accommodation.getPrice(), requestDto)
                        && isAvailableNumOfPeople(accommodation.getMaxNumOfPeople(), requestDto))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private boolean isAvailableNumOfPeople(Integer maxPeople, SearchRequestDto requestDto) {
        return maxPeople >= (requestDto.getNumOfAdult() + requestDto.getNumOfChild() + requestDto.getNumOfInfant());
    }

    private boolean isAvailableCost(BigDecimal price, SearchRequestDto requestDto) {
        return (price.compareTo(requestDto.getMinPrice()) == 0 || price.compareTo(requestDto.getMinPrice()) > 0)
                && (price.compareTo(requestDto.getMaxPrice()) == 0 || price.compareTo(requestDto.getMaxPrice()) < 0);
    }

    // 해당 숙소의 reservedDate이 checkInDate과 checkOutDate 사이에 없다면 예약 가능
    private boolean isAvailableDate(Long accommodationId, SearchRequestDto requestDto) {
        LocalDate checkIn = requestDto.getCheckInDate();
        LocalDate checkOut = requestDto.getCheckOutDate();

        return reservationRepository.findAllReservationDateByAccommodationId(accommodationId).stream()
                .map(reservationDate -> reservationDate.getReservedDate())
                .noneMatch(dateTime -> ((dateTime.isEqual(checkIn) || dateTime.isAfter(checkIn))
                        && (dateTime.isEqual(checkIn) || dateTime.isBefore(checkOut))));
    }

    private boolean isPresentOfDestination(SearchRequestDto requestDto) {
        return requestDto.getDestination() != null;
    }

    private boolean isPresentOfDate(SearchRequestDto requestDto) {
        return requestDto.getCheckInDate() != null && requestDto.getCheckOutDate() != null;
    }

    private boolean isPresentOfPrice(SearchRequestDto requestDto) {
        return requestDto.getMinPrice() != null && requestDto.getMaxPrice() != null;
    }

    private boolean isPresentOfPeople(SearchRequestDto requestDto) {
        return requestDto.getNumOfAdult() != null && requestDto.getNumOfChild() != null && requestDto.getNumOfInfant() != null;
    }

}
