package airbnb.dao;

import airbnb.domain.City;
import airbnb.domain.Room;
import airbnb.mapper.ImageMapper;
import airbnb.mapper.RoomMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class RoomDao {

    private final NamedParameterJdbcTemplate jdbcTemplate;
    private final RoomMapper roomMapper = new RoomMapper();
    private final ImageDao imageDao;

    public RoomDao(NamedParameterJdbcTemplate jdbcTemplate, ImageDao imageDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.imageDao = imageDao;
    }

    public List<Room> findAll(){
        String sql = "SELECT id, price, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clea_tax, service_tax, accommodation_tax  FROM city";
        List<Room> rooms = jdbcTemplate.query(sql, roomMapper);
        rooms.forEach(room -> room.setImages(imageDao.findByRoomId(room.getId())));
        return rooms;
    }

    public List<Integer> findAllPrice(){
        List<Integer> prices = new ArrayList<>();
        String sql = "SELECT price FROM room ORDER BY price";
        List<Room> rooms = jdbcTemplate.query(sql, roomMapper);
        rooms.forEach(room -> prices.add(room.getPrice()));
        return prices;
    }
}
