package com.example.airbnb.dao;

import com.example.airbnb.dto.CityDTO;
import com.example.airbnb.dto.MainPageDTO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Repository
public class CityDAO {
    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public CityDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public MainPageDTO getMainPage() {
        String sql = "SELECT c.id, c.city_name, c.city_image FROM city c ORDER BY c.id";
        List<CityDTO> cityDTOList = new ArrayList<>();
        jdbcTemplate.query(sql, (rs, rowNum) -> {
            cityDTOList.add(new CityDTO(
                    rs.getLong("id"),
                    rs.getString("city_name"),
                    rs.getString("city_image")
            ));
            return null;
        });
        MainPageDTO mainPageDTO = new MainPageDTO(cityDTOList);
        return mainPageDTO;
    }

}
