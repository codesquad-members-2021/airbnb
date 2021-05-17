package codesquad.team17.gnb.room;

import java.util.Optional;

public interface RoomRepository {

    Optional<Room> findById(Long id);

}
