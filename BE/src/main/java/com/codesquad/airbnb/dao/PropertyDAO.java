package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Property;
import com.codesquad.airbnb.dto.HostDTO;
import com.codesquad.airbnb.dto.PropertyDTO;
import com.codesquad.airbnb.dto.PropertyDetailResponseDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@Repository
public class PropertyDAO {

    private final JdbcTemplate jdbcTemplate;
    private  NamedParameterJdbcTemplate template;

    @Autowired
    public PropertyDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
        this.template = new NamedParameterJdbcTemplate(dataSource);
    }

    public class PropertyRowMapper implements RowMapper<Property> {
        // interface method
        public Property mapRow(ResultSet rs, int rowNum) throws SQLException {
            Property property = new Property(rs.getLong("id"), rs.getString("name"), rs.getInt("price"));
            return property;
        }
    }

    public class PropertyDTORowMapper implements RowMapper<PropertyDTO> {
        // interface method
        public PropertyDTO mapRow(ResultSet rs, int rowNum) throws SQLException {

            return PropertyDTO.of(rs.getLong("id"), rs.getString("title"),
                    rs.getBoolean("bookmark"), rs.getInt("price"),
                    rs.getInt("review_count"), rs.getDouble("rating"),
                    rs.getDouble("latitude"), rs.getDouble("longitude"));
        }
    }

    public Property findById(Long id) {
        String sql = "SELECT p.id, p.title, p.price FROM property as p WHERE id = ?";

        return jdbcTemplate.queryForObject(sql, new PropertyRowMapper(), id);
    }

    public List<Property> findAll() {
        String sql = "SELECT * FROM property";
        List<Property> properties = jdbcTemplate.query(sql, new PropertyRowMapper());

        return properties;
    }

    public List<PropertyDTO> findBy(Long locationId, LocalDate checkIn, LocalDate checkOut,
                                        int minPrice, int maxPrice, int maxOccupancy) {

        String sql = "select p.id, p.title, wl.bookmark, p.price, pd.review_count, " +
                "pd.rating, pd.latitude, pd.longitude " +
                "from property as p " +
                "left JOIN property_detail pd on pd.property_id = p.id " +
                "left JOIN wish_list wl on wl.property_id = p.id " +
                "left join reservation r on p.id = r.property_id " +
                "where p.id = pd.property_id " +
                "and p.id = wl.property_id " +
                "and p.location_id = ? " +
                "and pd.max_occupancy >= ? " +
                "and p.price >= ? " +
                "and p.price <= ? ";
        // TODO: userid도 함께 확인해서 wishList를 찾는것이 좋을 것 같음...

        Object[] objects = {locationId, maxOccupancy, minPrice, maxPrice};

        if (checkIn != null || checkOut != null) {
            sql += "AND r.property_id NOT IN (" +
                    "SELECT property_id " +
                    "FROM reservation " +
                    "WHERE ";

            if (checkIn != null) {
                sql += "(r.check_in_date <= ? And r.check_out_date > ? )";
                objects = new Object[]{locationId, maxOccupancy, minPrice, maxPrice, checkIn, checkIn};
            }
            if (checkOut != null) {
                sql += "OR (r.check_in_date < ? And r.check_out_date >= ? )";
                objects = new Object[]{locationId, maxOccupancy, minPrice, maxPrice, checkOut, checkOut};
            }
            if (checkIn != null && checkOut != null) {
                sql += "OR (? <= r.check_in_date AND r.check_in_date < ? )";
                objects = new Object[]{locationId, maxOccupancy, minPrice, maxPrice,
                        checkIn, checkIn,
                        checkOut, checkOut,
                        checkIn, checkOut};
            }
            sql += ")";
        }

        return jdbcTemplate.query(sql, new PropertyDTORowMapper(), objects);
    }


    public List<PropertyDTO> findByWishList() {
        String sql = "SELECT p.id, p.title, wl.bookmark, p.price, pd.review_count, "  +
                "pd.rating, pd.latitude, pd.longitude from property as p " +
                "left JOIN property_detail pd on pd.property_id = p.id " +
                "left JOIN wish_list wl on wl.property_id = p.id " +
                "where wl.bookmark = true " ;

        return jdbcTemplate.query(sql, new PropertyDTORowMapper());
    }

    public PropertyDetailResponseDTO findPropertyDetailByPropertyId(Long propertyId) {

        String sql = "SELECT p.id, p.title, pd.description, l.name, pd.room_type, pd.max_occupancy," +
                "pd.max_occupancy, pd.cleaning_fee, pd.bed_count, pd.bath_count, pd.review_count," +
                "p.price, pd.latitude, pd.longitude, pd.rating, h.name, h.image_url " +
                "from property as p, " +
                "property_detail as pd, " +
                "location as l , host as h " +
                "where p.id = pd.property_id " +
                "and l.id = p.location_id " +
                "and h.property_id = p.id " +
                "and p.id = ? ";

        PropertyDetailResponseDTO propertyDetailDto =
                jdbcTemplate.queryForObject(sql, new RowMapper<PropertyDetailResponseDTO>() {
                    @Override
                    public PropertyDetailResponseDTO mapRow(ResultSet rs, int rowNum) throws SQLException {

                        List<String> imageUrls = findImagesByPropertyId(rs.getLong("id"));

                        return PropertyDetailResponseDTO.of(
                                imageUrls,
                                rs.getString("title"), rs.getString("description"),
                                rs.getString("l.name"), rs.getString("room_type"), rs.getInt("max_occupancy"),
                                rs.getInt("cleaning_fee"), rs.getInt("bed_count"), rs.getInt("bath_count"),
                                rs.getInt("review_count"), rs.getInt("price"),
                                rs.getDouble("latitude"), rs.getDouble("longitude"), rs.getDouble("rating"),
                                new HostDTO(rs.getString("h.name"), rs.getString("image_url")));
                    }
                }, propertyId);

        return propertyDetailDto;
    }

    public String findImageByPropertyId(Long propertyId) {
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

    public List<String> findImagesByPropertyId(Long propertyId) {
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

