package airbnb.Service;

import airbnb.dao.RoomDao;
import airbnb.domain.Room;
import airbnb.dto.PriceRequest;
import airbnb.dto.RoomSearchRequest;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class RoomService {

    private final RoomDao roomDao;

    public RoomService(RoomDao roomDao) {
        this.roomDao = roomDao;
    }

    public List<Integer> findAllRoomPrice() {
        List<Room> rooms = findAll();
        return rooms.stream().map(Room::getPrice).sorted().collect(Collectors.toList());
    }

    public List<Room> findAll() {
        return roomDao.findAll();
    }

    public List<Integer> findSearchRoomPrice(PriceRequest priceRequest){
        List<Room> rooms = roomDao.findByCityIdAndSchedule(priceRequest.getCityId(),priceRequest.getSchedule());
        return rooms.stream().map(Room::getPrice).sorted().collect(Collectors.toList());
    }
}
