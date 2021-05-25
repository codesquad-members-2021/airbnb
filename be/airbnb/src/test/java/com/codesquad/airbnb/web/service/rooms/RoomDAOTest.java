package com.codesquad.airbnb.web.service.rooms;

import com.codesquad.airbnb.web.domain.room.BathroomType;
import com.codesquad.airbnb.web.domain.room.BedroomType;
import com.codesquad.airbnb.web.domain.room.PricePolicy;
import com.codesquad.airbnb.web.domain.room.Room;
import com.codesquad.airbnb.web.exceptions.RoomNotFoundException;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.geo.Point;
import org.springframework.transaction.annotation.Transactional;

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
                .pricePolicy(new PricePolicy(5000, 1000, 5000, 50000, 4))
                .build();
    }
}
