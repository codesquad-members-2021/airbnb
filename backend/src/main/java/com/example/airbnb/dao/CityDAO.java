package com.example.airbnb.dao;

import com.example.airbnb.dto.CityDTO;
import com.example.airbnb.dto.MainPageDTO;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

import static com.example.airbnb.utils.SQLKt.*;

@Repository
public class CityDAO {
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public CityDAO(DataSource dataSource) {
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public MainPageDTO getMainPage() {
        List<CityDTO> cityDTOList = new ArrayList<>();
        namedParameterJdbcTemplate.query(SELECT_MAIN_PAGE, (rs, rowNum) -> {
            cityDTOList.add(new CityDTO(
                    rs.getLong("id"),
                    rs.getString("city_name"),
                    rs.getString("city_image")
            ));
            return cityDTOList;
        });
        return new MainPageDTO(cityDTOList);
    }

}
