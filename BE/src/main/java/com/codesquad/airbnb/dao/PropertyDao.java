package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Image;
import com.codesquad.airbnb.domain.Property;
import com.codesquad.airbnb.domain.PropertyDetail;
import com.codesquad.airbnb.domain.WishList;
import com.codesquad.airbnb.dto.PropertiesResponseDto;
import com.codesquad.airbnb.dto.PropertyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlParameterValue;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.time.LocalDate;
import java.util.List;

@Repository
public class PropertyDao {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public PropertyDao(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public class PropertyRowMapper implements RowMapper<Property> {
        // interface method
        public Property mapRow(ResultSet rs, int rowNum) throws SQLException {
            Property property = new Property(rs.getLong("id"), rs.getString("name"), rs.getInt("price"));
            return property;
        }
    }

    public class PropertyDetailRowMapper implements RowMapper<PropertyDto> {

        // interface method
        @Override
        public PropertyDto mapRow(ResultSet rs, int rowNum) throws SQLException {
            Property property = new Property(rs.getLong("id"), rs.getString("name"), rs.getInt("price"));
            PropertyDetail propertyDetail = new PropertyDetail(rs.getLong("property_id"),
                    rs.getString("description"), rs.getInt("max_occupancy"),
                    rs.getInt("cleaning_fee"), rs.getInt("bed_count"), rs.getInt("bath_count"),
                    rs.getString("room_type"), rs.getInt("review_count"),
                    rs.getDouble("latitude"), rs.getDouble("longitude"));
            WishList wishList = new WishList(rs.getBoolean("bookmark"));
            Image image = new Image(rs.getString("image_url"));

            return PropertyDto.of(property, propertyDetail, wishList, image, 0);
        }
    }

    public Property findById(Long id) {
        String sql = "SELECT * FROM property WHERE id = ?";

        return jdbcTemplate.queryForObject(sql, new PropertyRowMapper(), id);
    }

    public List<Property> findAll() {
        String sql = "SELECT * FROM property";
        List<Property> properties = jdbcTemplate.query(sql, new PropertyRowMapper());

        return properties;
    }

    public PropertiesResponseDto findBy(Long locationId, LocalDate checkIn, LocalDate checkOut,
                                        int minPrice, int maxPrice, int adult, int children, int infant) {
        int maxOccupancy = adult+children+infant;
        String sql = "SELECT * FROM property, property_detail, image, wish_list " +
                "RIGHT JOIN property p on wish_list.property_id = p.id " +
                "WHERE property.id = property_detail.property_id and " +
                "property.id = image.property_id and " +
                "property.location_id = ? and " +
                "property_detail.max_occupancy >= ? and " +
                "property.price >= ? and property.price <= ?";

        List<PropertyDto> propertyDto = jdbcTemplate.query(sql, new PropertyDetailRowMapper(),
                new SqlParameterValue(Types.BIGINT, locationId),
                new SqlParameterValue(Types.INTEGER, maxOccupancy),
                new SqlParameterValue(Types.INTEGER, minPrice),
                new SqlParameterValue(Types.INTEGER, maxPrice));
        PropertiesResponseDto propertyDtos = new PropertiesResponseDto(propertyDto);

        return propertyDtos;
    }

}

