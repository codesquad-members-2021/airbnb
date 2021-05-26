package airbnb.dao;

import airbnb.domain.City;
import airbnb.domain.Room;
import airbnb.mapper.ImageMapper;
import airbnb.mapper.RoomMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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
        String sql = "SELECT id, price, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax FROM room";
        List<Room> rooms = jdbcTemplate.query(sql, roomMapper);
        rooms.forEach(room -> room.setImages(imageDao.findByRoomId(room.getId())));
        return rooms;
    }

    public List<Integer> findAllPrice(){
        String sql = "SELECT id, price, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax FROM room ";
        List<Room> rooms = jdbcTemplate.query(sql, roomMapper);
        return rooms.stream().map(Room::getPrice).sorted().collect(Collectors.toList());
    }
}
