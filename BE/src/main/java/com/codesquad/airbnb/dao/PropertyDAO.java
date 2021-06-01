package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.dao.rowMapper.ImageRowMapper;
import com.codesquad.airbnb.dao.rowMapper.PropertyDTORowMapper;
import com.codesquad.airbnb.dao.rowMapper.PropertyRowMapper;
import com.codesquad.airbnb.domain.Property;
import com.codesquad.airbnb.dto.HostDTO;
import com.codesquad.airbnb.dto.property.PropertyDTO;
import com.codesquad.airbnb.dto.property.PropertyDetailResponseDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@Repository
public class PropertyDAO {

    private final JdbcTemplate jdbcTemplate;
    private final String FIND_BY_PROPERTY_LIST_DEFAULT = "SELECT p.id, p.title, p.price, wl.bookmark, pd.review_count, " +
            "pd.rating, pd.latitude, pd.longitude " +
            "FROM property AS p " +
            "LEFT JOIN property_detail pd ON pd.property_id = p.id " +
            "LEFT JOIN wish_list wl ON wl.property_id = p.id ";

    @Autowired
    public PropertyDAO(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public Property findById(Long id) {
        String sql = "SELECT p.id, p.title, p.price FROM property as p WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new PropertyRowMapper(), id);
    }

    public List<Property> findAll() {
        String sql = "SELECT p.id, p.title, p.price FROM property as p";
        List<Property> properties = jdbcTemplate.query(sql, new PropertyRowMapper());

        return properties;
    }

    public List<PropertyDTO> findBy(Long locationId, LocalDate checkIn, LocalDate checkOut,
                                    int minPrice, int maxPrice, int maxOccupancy) {

        String sql = FIND_BY_PROPERTY_LIST_DEFAULT +
                "LEFT JOIN reservation r ON p.id = r.property_id " +
                "WHERE p.id = pd.property_id " +
                "AND p.id = wl.property_id " +
                "AND p.location_id = ? " +
                "AND pd.max_occupancy >= ? " +
                "AND p.price >= ? " +
                "AND p.price <= ? ";
        // TODO: userid도 함께 확인해서 wishList를 찾는것이 좋을 것 같음...

        Object[] objects = {locationId, maxOccupancy, minPrice, maxPrice};

        if (checkIn != null || checkOut != null) {
            sql += "AND r.property_id NOT IN (" +
                    "SELECT property_id " +
                    "FROM reservation " +
                    "WHERE ";

            if (checkIn != null) {
                sql += "(r.check_in_date <= ? AND r.check_out_date > ? )";
                objects = new Object[]{locationId, maxOccupancy, minPrice, maxPrice, checkIn, checkIn};
            }
            if (checkOut != null) {
                sql += "OR (r.check_in_date < ? AND r.check_out_date >= ? )";
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
        String sql = FIND_BY_PROPERTY_LIST_DEFAULT +
                "WHERE wl.bookmark = TRUE ";

        return jdbcTemplate.query(sql, new PropertyDTORowMapper());
    }

    public PropertyDetailResponseDTO findPropertyDetailByPropertyId(Long propertyId) {

        String sql = "SELECT p.id, p.title, pd.description, l.name, pd.room_type, pd.max_occupancy," +
                "pd.max_occupancy, pd.cleaning_fee, pd.bed_count, pd.bath_count, pd.review_count," +
                "p.price, pd.latitude, pd.longitude, pd.rating, h.name, h.image_url " +
                "FROM property AS p, " +
                "property_detail AS pd, " +
                "location AS l , host AS h " +
                "WHERE p.id = pd.property_id " +
                "AND l.id = p.location_id " +
                "AND h.property_id = p.id " +
                "AND p.id = ? ";

        return jdbcTemplate.queryForObject(sql, new RowMapper<PropertyDetailResponseDTO>() {
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
    }

    public String findImageByPropertyId(Long propertyId) {
        String sql = "SELECT image_url FROM image " +
                "WHERE image.property_id = ? " +
                "AND image.thumbnail = TRUE";

        return jdbcTemplate.queryForObject(sql, new ImageRowMapper(), propertyId);
    }

    public List<String> findImagesByPropertyId(Long propertyId) {
        String sql = "SELECT image_url FROM image " +
                "WHERE image.property_id = ?";

        return jdbcTemplate.query(sql, new ImageRowMapper(), propertyId);
    }

    public List<Integer> findPricesByLocationId(Long locationId) {
        String sql = "SELECT price FROM property where location_id = ?";
        return jdbcTemplate.queryForList(sql, Integer.class, locationId);
    }
}

