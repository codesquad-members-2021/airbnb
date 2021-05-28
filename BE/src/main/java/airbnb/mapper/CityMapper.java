package airbnb.mapper;

import airbnb.domain.City;
import airbnb.domain.Location;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;


public class CityMapper implements RowMapper<City> {

    @Override
    public City mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new City(rs.getLong("id"), rs.getString("name"), new Location(rs.getDouble("latitude"), rs.getDouble("longitude")));
    }
}
