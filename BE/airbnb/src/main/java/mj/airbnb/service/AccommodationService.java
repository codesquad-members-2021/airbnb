package mj.airbnb.service;

import mj.airbnb.domain.accommodation.Accommodation;
import mj.airbnb.domain.accommodation.AccommodationRepository;
import mj.airbnb.domain.reservation.ReservationRepository;
import mj.airbnb.web.dto.AccommodationResponseDto;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class AccommodationService {

    private final AccommodationRepository accommodationRepository;
    private final ReservationRepository reservationRepository;

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
                .filter(accommodation -> isAvailableDate(accommodation.getId(), checkInDate, checkOutDate))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    public List<AccommodationResponseDto> findAllByDestinationAndDateAndPrice(
            String destination, String checkInDate, String checkOutDate, Integer minPrice, Integer maxPrice) {

        return accommodationRepository.findAllByDestination(destination).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), checkInDate, checkOutDate)
                        && isAvailableCost(accommodation.getPrice(), minPrice, maxPrice))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    public List<AccommodationResponseDto> findAllByDestinationAndDateAndPriceAndPeople(
            String destination, String checkInDate, String checkOutDate, Integer minPrice, Integer maxPrice,
            Integer numOfAdult, Integer numOfChild, Integer numOfInfant) {

        return accommodationRepository.findAllByDestination(destination).stream()
                .filter(accommodation -> isAvailableDate(accommodation.getId(), checkInDate, checkOutDate)
                        && isAvailableCost(accommodation.getPrice(), minPrice, maxPrice)
                        && isAvailableNumOfPeople(accommodation.getMaxPeople(), numOfAdult, numOfChild, numOfInfant))
                .map(AccommodationResponseDto::new)
                .collect(Collectors.toList());
    }

    private boolean isAvailableNumOfPeople(Integer maxPeople, Integer numOfAdult, Integer numOfChild, Integer numOfInfant) {
        return maxPeople >= (numOfAdult + numOfChild + numOfInfant);
    }

    private boolean isAvailableCost(Integer price, Integer minPrice, Integer maxPrice) {
        return price >= minPrice && price <= maxPrice;
    }

    // 해당 숙소의 reservedDate이 checkInDate과 checkOutDate 사이에 없다면 예약 가능
    private boolean isAvailableDate(Long accommodationId, String checkInDate, String checkOutDate) {
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate checkIn = LocalDate.parse(checkInDate, dateFormat);
        LocalDate checkOut = LocalDate.parse(checkOutDate, dateFormat);

        return reservationRepository.findALLReservationDateByAccommodationId(accommodationId).stream()
                .map(reservationDate -> LocalDate.parse(reservationDate.getReservedDate(), dateFormat))
                .noneMatch(dateTime -> ((dateTime.isEqual(checkIn) || dateTime.isAfter(checkIn))
                        && (dateTime.isEqual(checkIn) || dateTime.isBefore(checkOut))));
    }
}
