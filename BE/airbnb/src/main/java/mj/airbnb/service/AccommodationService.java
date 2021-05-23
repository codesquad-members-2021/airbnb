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

    public List<AccommodationResponseDto> findAllByConditions(SearchRequestDto requestDto) {

        if (isPresentOfDestination(requestDto) && isPresentOfDate(requestDto) &&
                isPresentOfPrice(requestDto) && isPresentOfPeople(requestDto)) {

            logger.info("지역, 날짜, 가격, 인원 조건 따라 숙소 조회 ");
            return findAllByDestinationAndDateAndPriceAndPeople(requestDto);
        }

        if (isPresentOfDestination(requestDto) && isPresentOfDate(requestDto) && isPresentOfPrice(requestDto)) {

            logger.info("지역, 날짜, 가격 조건에 따라 숙소 조회 ");
            return findAllByDestinationAndDateAndPrice(requestDto);
        }

        if (isPresentOfDestination(requestDto) && isPresentOfDate(requestDto)) {

            logger.info("지역, 날짜 조건에 따라 숙소 조회 ");
            return findAllByDestinationAndDate(requestDto);
        }

        if (isPresentOfDestination(requestDto)) {

            logger.info("지역 조건에 따라 숙소 조회 ");
            return findAllByDestination(requestDto);
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
        return accommodationRepository.findAllByDestination(requestDto.getDestination().get()).stream()
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private List<AccommodationResponseDto> findAllByDestinationAndDate(SearchRequestDto requestDto) {

        return accommodationRepository.findAllByDestination(requestDto.getDestination().get()).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), requestDto))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private List<AccommodationResponseDto> findAllByDestinationAndDateAndPrice(SearchRequestDto requestDto) {

        return accommodationRepository.findAllByDestination(requestDto.getDestination().get()).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), requestDto)
                        && isAvailableCost(accommodation.getPrice(), requestDto))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private List<AccommodationResponseDto> findAllByDestinationAndDateAndPriceAndPeople(SearchRequestDto requestDto) {

        return accommodationRepository.findAllByDestination(requestDto.getDestination().get()).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), requestDto)
                        && isAvailableCost(accommodation.getPrice(), requestDto)
                        && isAvailableNumOfPeople(accommodation.getMaxPeople(), requestDto))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private boolean isAvailableNumOfPeople(Integer maxPeople, SearchRequestDto requestDto) {
        return maxPeople >= (requestDto.getNumOfAdult().get() + requestDto.getNumOfChild().get() + requestDto.getNumOfInfant().get());
    }

    private boolean isAvailableCost(BigDecimal price, SearchRequestDto requestDto) {
        return (price.compareTo(requestDto.getMinPrice().get()) == 0 || price.compareTo(requestDto.getMinPrice().get()) > 0)
                && (price.compareTo(requestDto.getMaxPrice().get()) == 0 || price.compareTo(requestDto.getMaxPrice().get()) < 0);
    }

    // 해당 숙소의 reservedDate이 checkInDate과 checkOutDate 사이에 없다면 예약 가능
    private boolean isAvailableDate(Long accommodationId, SearchRequestDto requestDto) {
        LocalDate checkIn = requestDto.getCheckInDate().get();
        LocalDate checkOut = requestDto.getCheckOutDate().get();

        return reservationRepository.findALLReservationDateByAccommodationId(accommodationId).stream()
                .map(reservationDate -> reservationDate.getReservedDate())
                .noneMatch(dateTime -> ((dateTime.isEqual(checkIn) || dateTime.isAfter(checkIn))
                        && (dateTime.isEqual(checkIn) || dateTime.isBefore(checkOut))));
    }

    private boolean isPresentOfDestination(SearchRequestDto requestDto) {
        return requestDto.getDestination().isPresent();
    }

    private boolean isPresentOfDate(SearchRequestDto requestDto) {
        return requestDto.getCheckInDate().isPresent() && requestDto.getCheckOutDate().isPresent();
    }

    private boolean isPresentOfPrice(SearchRequestDto requestDto) {
        return requestDto.getMinPrice().isPresent() && requestDto.getMaxPrice().isPresent();
    }

    private boolean isPresentOfPeople(SearchRequestDto requestDto) {
        return requestDto.getNumOfAdult().isPresent() && requestDto.getNumOfChild().isPresent() && requestDto.getNumOfInfant().isPresent();
    }

}
