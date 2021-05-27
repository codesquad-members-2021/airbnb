package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.reservation.Reservation;
import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.domain.room.RoomRepository;
import com.codesquad.airbnb.web.dto.ReservationPreview;
import com.codesquad.airbnb.web.dto.RoomDetail;
import com.codesquad.airbnb.web.dto.RoomPreviews;
import com.codesquad.airbnb.web.dto.UserInput;
import com.codesquad.airbnb.web.exceptions.RoomNotFoundException;
import com.codesquad.airbnb.web.service.reservation.ReservationDtoConverter;
import com.codesquad.airbnb.web.service.reservation.ReservationService;
import com.codesquad.airbnb.web.service.users.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RoomService {

    private final RoomRepository roomRepository;
    private final UserService userService;
    private final RoomDtoConverter roomDtoConverter;
    private final ReservationDtoConverter reservationDtoConverter;
    private final ReservationService reservationService;

    public RoomService(RoomRepository roomRepository,
                       UserService userService,
                       RoomDtoConverter roomDtoConverter,
                       ReservationService reservationService,
                       ReservationDtoConverter reservationDtoConverter) {
        this.roomRepository = roomRepository;
        this.userService = userService;
        this.roomDtoConverter = roomDtoConverter;
        this.reservationService = reservationService;
        this.reservationDtoConverter = reservationDtoConverter;
    }

    public RoomPreviews showRooms(UserInput userInput) {
        List<Room> rooms = roomRepository.findRoomsByUserInput(userInput);
        return roomDtoConverter.roomsToRoomPreviews(rooms, userInput.stayDay());
    }

    public RoomDetail showRoomDetail(int roomId, UserInput userInput) {
        Room room = findRoom(roomId);
        return roomDtoConverter.roomToRoomDetail(room, userInput.stayDay());
    }

    public Room findRoom(int roomId) {
        return roomRepository.findRoomById(roomId).orElseThrow(() -> new RoomNotFoundException(roomId));
    }

    @Transactional
    public ReservationPreview makeReservation(int roomId, int guestId, UserInput userInput) {
        userInput.verifyUserInputIsReservationable();
        Room room = findRoom(roomId);
        room.checkGuestCapacity(userInput.guestCount());
        checkUserIsExist(guestId);
        reservationService.checkReservationable(roomId, userInput);
        Reservation reservation = createReservationInstance(roomId, guestId, userInput);
        reservationService.save(reservation);
        return reservationDtoConverter.reservationToReservationDetail(reservation);
    }

    private void checkUserIsExist(int guestId) {
        userService.findGuest(guestId);
    }

    private Reservation createReservationInstance(int roomId, int guestId, UserInput userInput) {
        return Reservation.builder()
                .roomId(roomId)
                .guestId(guestId)
                .adultCount(userInput.getAdultCount())
                .childCount(userInput.getChildCount())
                .infantCount(userInput.getInfantCount())
                .checkinDateTime(userInput.getCheckIn())
                .checkoutDateTime(userInput.getCheckOut())
                .build();
    }
}
