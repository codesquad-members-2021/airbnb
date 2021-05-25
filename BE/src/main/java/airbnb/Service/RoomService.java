package airbnb.Service;

import airbnb.dao.RoomDao;
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

    public Map<String,Integer> findAllRoomPrice(){
        List<Integer> prices = roomDao.findAllPrice();
        for(Integer price : prices){
            
        }
        return
    }
}
