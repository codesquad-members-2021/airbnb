package airbnb.Service;

import airbnb.dao.RoomDao;
import airbnb.domain.Room;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RoomService {

    private final RoomDao roomDao;

    public RoomService(RoomDao roomDao) {
        this.roomDao = roomDao;
    }

    public List<Integer> findAllRoomPrice(){
        return roomDao.findAllPrice();
    }

    public List<Room> findAll(){
        return roomDao.findAll();
    }
}
