package com.codesquad.coco.rooms;

import com.codesquad.coco.image.ImageDAO;
import com.codesquad.coco.reservation.Reservation;
import com.codesquad.coco.rooms.model.Rooms;
import com.codesquad.coco.rooms.model.dto.SearchPriceDTO;
import com.codesquad.coco.rooms.model.dto.SearchRoomsDTO;
import com.codesquad.coco.utils.mapper.ReservationMapper;
import com.codesquad.coco.utils.mapper.RoomsMapper;
import com.codesquad.coco.utils.mapper.SearchPriceMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

import static com.codesquad.coco.utils.RoomsSQLKt.*;

@Component
public class RoomsDAO {

    private NamedParameterJdbcTemplate template;
    private ImageDAO imageDAO;

    public RoomsDAO(NamedParameterJdbcTemplate template, ImageDAO imageDAO) {
        this.template = template;
        this.imageDAO = imageDAO;
    }

    public List<Integer> findPricesBySearchPrice(SearchPriceDTO dto) {
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("check_in", dto.getCheckIn())
                .addValue("check_out", dto.getCheckOut())
                .addValue("city_name", dto.getCityName());
        return template.query(FIND_PRICES_BY_SEARCH_REQUIREMENT, parameter, new SearchPriceMapper());

    }

    public List<Rooms> findRoomsBySearchRooms(SearchRoomsDTO roomsDTO) {
        List<Rooms> roomsList = findRoomsBySearchRoomsWithOutImageAndReservation(roomsDTO);
        //todo : 해당하는 방이 없을 때의 예외 설정
        for (Rooms rooms : roomsList) {
            Long id = rooms.getId();
            findReservationByRoomsId(id).forEach(rooms::addReservation);
            imageDAO.findImageByRoomsId(id).forEach(rooms::addImages);
        }
        return roomsList;
    }

    private List<Rooms> findRoomsBySearchRoomsWithOutImageAndReservation(SearchRoomsDTO roomsDTO) {
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("check_in", roomsDTO.getCheckIn())
                .addValue("check_out", roomsDTO.getCheckOut())
                .addValue("city_name", roomsDTO.getCityName())
                .addValue("adult", roomsDTO.getAdult())
                .addValue("child", roomsDTO.getChild())
                .addValue("baby", roomsDTO.getBaby())
                .addValue("price_min", roomsDTO.getPriceMin())
                .addValue("price_max", roomsDTO.getPriceMax());
        return template.query(FIND_ROOMS_BY_SEARCH_REQUIREMENT, parameter, new RoomsMapper());

    }

    private List<Reservation> findReservationByRoomsId(Long id) {
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("rooms_id", id);
        return template.query(FIND_RESERVATION_BY_ROOMS_ID, parameter, new ReservationMapper());
    }
}
