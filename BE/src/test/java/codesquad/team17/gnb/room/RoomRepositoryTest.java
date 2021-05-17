package codesquad.team17.gnb.room;

import codesquad.team17.gnb.exception.NotFoundException;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.JdbcTest;
import org.springframework.jdbc.core.JdbcTemplate;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

@JdbcTest
class RoomRepositoryTest {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    private RoomRepository roomRepository;

    @BeforeEach
    void setUp() {
        roomRepository = new JdbcRoomRepository(jdbcTemplate);
    }

    @Test
    void getRoom() {
        Room room = roomRepository.findById(1L).orElseThrow(() -> new NotFoundException("숙소 없음"));
        assertThat(room).hasFieldOrPropertyWithValue("name", "서울호스텔");
    }

    @Test
    void NoRoom() {
        assertThatThrownBy(() -> roomRepository.findById(3L).orElseThrow(() -> new NotFoundException("숙소 없음")))
                .isInstanceOf(RuntimeException.class);
    }
}
