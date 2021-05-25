package com.codesquad.airbnb.web.service.rooms;

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
        String name = "aaaa";
        String description = "bbbb";
        int guestCapacity = 2;
        int locationId = 4;
        Point point = new Point(37.252352, 235.52532);
        float rating = 0.5f;
        Room room = Room.builder()
                .name(name)
                .description(description)
                .guestCapacity(guestCapacity)
                .locationId(locationId)
                .point(point)
                .rating(rating)
                .build();
        room = roomDAO.save(room);
        final int roomId = room.getId();
        Room testRoom = roomDAO.findRoomById(roomId).orElseThrow(() -> new RoomNotFoundException(roomId));
        assertThat(testRoom).isNotNull();
        assertThat(testRoom.getName()).isEqualTo(name);
        assertThat(testRoom.getDescription()).isEqualTo(description);
        assertThat(testRoom.getGuestCapacity()).isEqualTo(guestCapacity);
        assertThat(testRoom.getLocationId()).isEqualTo(locationId);
        assertThat(testRoom.getPoint()).isEqualTo(point);
        assertThat(testRoom.getRating()).isEqualTo(rating);
    }
}
