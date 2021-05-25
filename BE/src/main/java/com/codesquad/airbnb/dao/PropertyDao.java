package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Property;
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
import java.time.temporal.ChronoUnit;
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
            return PropertyDto.of(rs.getLong("id"), rs.getString("name"),
                    rs.getBoolean("bookmark"), rs.getInt("price"),
                    rs.getInt("review_count"), rs.getDouble("rating"));
        }
    }

    public Property findById(Long id) {
        String sql = "SELECT p.id, p.name, p.price FROM property as p WHERE id = ?";

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
        String sql = "select p.id, p.name, wl.bookmark, p.price, pd.review_count, pd.rating " +
                "from property as p, " +
                "property_detail as pd, " +
                "wish_list as wl " +
                "where p.id = pd.property_id " +
                "and p.id = wl.property_id " +
                "and p.location_id = ? " +
                "and pd.max_occupancy >= ? " +
                "and p.price >= ? " +
                "and p.price <= ?";
        // TODO: userid도 함께 확인해서 wishList를 찾는것이 좋을 것 같음...

        long diff = ChronoUnit.DAYS.between(checkIn, checkOut);

        List<PropertyDto> propertyDto = jdbcTemplate.query(sql, new PropertyDetailRowMapper(),
                new SqlParameterValue(Types.BIGINT, locationId),
                new SqlParameterValue(Types.INTEGER, maxOccupancy),
                new SqlParameterValue(Types.INTEGER, minPrice),
                new SqlParameterValue(Types.INTEGER, maxPrice));

        propertyDto.stream()
                .forEach(propertyDto1 -> {
                    propertyDto1.setImages(findImageByPropertyId(propertyDto1.getPropertyId()));
                    propertyDto1.setTotalPrice(diff);
                }
                );

        PropertiesResponseDto propertyDtos = new PropertiesResponseDto(propertyDto);

        return propertyDtos;
    }

    private String findImageByPropertyId(Long propertyId) {
        String sql = "SELECT * FROM image " +
                "WHERE image.property_id = ? " +
                "and image.thumbnail = true";

        String image = jdbcTemplate.queryForObject(sql, new RowMapper<String>() {
            @Override
            public String mapRow(ResultSet rs, int rowNum) throws SQLException {
                return rs.getString("image_url");
            }
        }, propertyId);
        return image;
    }

    private List<String> findImagesByPropertyId(Long propertyId) {
        String sql = "SELECT * FROM image " +
                "WHERE image.property_id = ?";

        List<String> images = jdbcTemplate.query(sql, new RowMapper<String>() {
            @Override
            public String mapRow(ResultSet rs, int rowNum) throws SQLException {
                return rs.getString("image_url");
            }
        }, propertyId);
        return images;
    }

    public List<Integer> findPricesByLocationId(Long locationId) {
        String sql = "SELECT price FROM property where location_id = ?";

        return jdbcTemplate.queryForList(sql, Integer.class, locationId);
    }
}

