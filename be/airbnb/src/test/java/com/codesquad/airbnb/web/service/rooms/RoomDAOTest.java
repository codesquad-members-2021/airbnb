package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.BathroomType;
import com.codesquad.airbnb.web.domain.room.BedroomType;
import com.codesquad.airbnb.web.domain.room.PricePolicy;
import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.dto.UserInput;
import com.codesquad.airbnb.web.exceptions.RoomNotFoundException;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.geo.Point;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

import static com.codesquad.airbnb.web.dto.UserInput.DATE_TIME_FORMATTER;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@Transactional
class RoomDAOTest {

    @Autowired
    private RoomDAO roomDAO;

    @Test
    @DisplayName("숙소정보를 저장하고 조회할 수 있어야 함")
    void testSaveRoom() {
        Room room = createRoom();
        roomDAO.save(room);
        final int roomId = room.getId();
        Room testRoom = roomDAO.findRoomById(roomId).orElseThrow(() -> new RoomNotFoundException(roomId));
        verifyRoom(testRoom, room);
    }

    private void verifyRoom(Room testTarget, Room expected) {
        assertThat(testTarget).isNotNull();
        assertThat(testTarget.getName()).isEqualTo(expected.getName());
        assertThat(testTarget.getDescription()).isEqualTo(expected.getDescription());
        assertThat(testTarget.getGuestCapacity()).isEqualTo(expected.getGuestCapacity());
        assertThat(testTarget.getLocationId()).isEqualTo(expected.getLocationId());
        assertThat(testTarget.getPoint()).isEqualTo(expected.getPoint());
        assertThat(testTarget.getRating()).isEqualTo(expected.getRating());
        assertThat(testTarget.getBathroomType()).isEqualTo(expected.getBathroomType());
        assertThat(testTarget.getBedroomType()).isEqualTo(expected.getBedroomType());
        assertThat(testTarget.getBedCount()).isEqualTo(expected.getBedCount());
        assertThat(testTarget.getAmenity()).isEqualTo(expected.getAmenity());
    }

    @Test
    @DisplayName("숙소 가격정보를 저장하고 조회할 수 있어야 함")
    void testPricePolicy() {
        Room room = createRoom();
        roomDAO.save(room);
        final int roomId = room.getId();
        Room testRoom = roomDAO.findRoomById(roomId).orElseThrow(() -> new RoomNotFoundException(roomId));
        assertThat(testRoom).isNotNull();
        PricePolicy pricePolicy = testRoom.getPricePolicy();
        PricePolicy expected = room.getPricePolicy();
        verifyPricePolicy(pricePolicy, expected);
    }

    private void verifyPricePolicy(PricePolicy target, PricePolicy expected) {
        assertThat(target).isNotNull();
        assertThat(target.getPricePerDay()).isEqualTo(expected.getPricePerDay());
        assertThat(target.getAccomodationTax()).isEqualTo(expected.getAccomodationTax());
        assertThat(target.getCleanUpCost()).isEqualTo(expected.getCleanUpCost());
        assertThat(target.getServiceFee()).isEqualTo(expected.getServiceFee());
        assertThat(target.getWeeklyDiscount()).isEqualTo(expected.getWeeklyDiscount());
    }

    @Test
    @DisplayName("숙소를 UserInput으로 조회할 수 있어야 합니다")
    void searchRooms() {
        UserInput userInput = UserInput.builder()
                .location("서울특별시")
                .checkIn(LocalDate.parse("2021-05-01", DATE_TIME_FORMATTER))
                .checkOut(LocalDate.parse("2021-05-02", DATE_TIME_FORMATTER))
                .priceMinimum(1)
                .priceMaximum(10_000_000)
                .adultCount(1)
                .childCount(0)
                .infantCount(0)
                .build();
        List<Room> rooms = roomDAO.findRoomsByUserInput(userInput);
        rooms.forEach(System.out::println);

    }

    private Room createRoom() {
        String name = "aaaa";
        String description = "bbbb";
        int guestCapacity = 2;
        int locationId = 4;
        Point point = new Point(37.252352, 235.52532);
        float rating = 0.5f;
        return Room.builder()
                .name(name)
                .description(description)
                .guestCapacity(guestCapacity)
                .locationId(locationId)
                .point(point)
                .rating(rating)
                .bathroomType(BathroomType.PRIVATE_BATHROOM)
                .bedroomType(BedroomType.BEDROOM)
                .bedCount(2)
                .amenity("주방, 무선인터넷, 에어컨, 헤어드라이어")
                .pricePolicy(new PricePolicy(5000, 1000, 5000, 50000, 4))
                .build();
    }
}
