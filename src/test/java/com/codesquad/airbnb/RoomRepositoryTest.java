package com.codesquad.airbnb;

import com.codesquad.airbnb.domain.Room;
import com.codesquad.airbnb.repository.RoomRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@SpringBootTest
public class RoomRepositoryTest {

    @Autowired
    RoomRepository roomRepository;

    @Test
    void checkFindById() {
        Room room = roomRepository.findById(1L).orElseThrow(NoSuchElementException::new);
        Assertions.assertThat(room.getId()).isEqualTo(1L);
    }

    @Test
    void checkFindAll() {
        List<Room> roomList = roomRepository.findAll();
        Assertions.assertThat(roomList.stream().count()).isEqualTo(3);
    }

    @Test
    @DisplayName("검색 조건에 맞는 room들을 조회한다.")
    void checkJoinedAndFilteredTable() {
        List<Room> rooms = roomRepository.getFilteredRooms(LocalDate.of(2021, 5, 20),
                LocalDate.of(2021, 5, 21),
                55000, 80000, 2);
        rooms.forEach(System.out::println);
    }
}
