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
            return PropertyDto.of(property, propertyDetail, wishList,0);
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
        String sql = "SELECT * FROM property, property_detail, wish_list " +
                "WHERE property.id = property_detail.property_id and " +
                "property.id = wish_list.property_id and " +
                "property.location_id = ? and " +
                "property_detail.max_occupancy >= ? and " +
                "property.price >= ? and property.price <= ?";
        // TODO: userid도 함께 확인해서 wishList를 찾는것이 좋을 것 같음...

        List<PropertyDto> propertyDto = jdbcTemplate.query(sql, new PropertyDetailRowMapper(),
                new SqlParameterValue(Types.BIGINT, locationId),
                new SqlParameterValue(Types.INTEGER, maxOccupancy),
                new SqlParameterValue(Types.INTEGER, minPrice),
                new SqlParameterValue(Types.INTEGER, maxPrice));

        propertyDto.stream()
                .forEach(propertyDto1 -> propertyDto1.addImage(findImageByPropertyId(propertyDto1.getPropertyId())));

        PropertiesResponseDto propertyDtos = new PropertiesResponseDto(propertyDto);

        return propertyDtos;
    }

    private List<Image> findImageByPropertyId(Long propertyId) {
        String sql = "SELECT * FROM image " +
                "WHERE image.property_id = ?";

        List<Image> images = jdbcTemplate.query(sql, new RowMapper<Image>() {
            @Override
            public Image mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Image(rs.getString("image_url"));
            }
        }, propertyId);
        return images;
    }
}

