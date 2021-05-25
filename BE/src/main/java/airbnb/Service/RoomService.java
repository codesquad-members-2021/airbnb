package airbnb.Service;

import airbnb.dao.RoomDao;
import org.springframework.stereotype.Service;

@Service
public class RoomService {
    private final RoomDao roomDao;

    public RoomService(RoomDao roomDao) {
        this.roomDao = roomDao;
    }
}
