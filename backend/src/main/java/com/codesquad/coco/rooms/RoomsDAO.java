package com.codesquad.coco.rooms;

import com.codesquad.coco.rooms.model.dto.SearchPriceDTO;
import com.codesquad.coco.utils.mapper.SearchPriceMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

import static com.codesquad.coco.utils.RoomsSQLKt.FIND_PRICES_BY_SEARCH_REQUIREMENT;

@Component
public class RoomsDAO {

    private NamedParameterJdbcTemplate template;

    public RoomsDAO(NamedParameterJdbcTemplate template) {
        this.template = template;
    }

    public List<Integer> findPricesBySearchPrice(SearchPriceDTO dto){
        MapSqlParameterSource parameter = new MapSqlParameterSource()
                .addValue("check_in",dto.getCheckIn())
                .addValue("check_out",dto.getCheckOut())
                .addValue("city_name",dto.getCityName());
        return template.query(FIND_PRICES_BY_SEARCH_REQUIREMENT, parameter, new SearchPriceMapper());

    }
}
