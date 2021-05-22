package mj.airbnb.domain.accommodation;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class AccommodationRepository {

    private final JdbcTemplate jdbcTemplate;

    public AccommodationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Accommodation> findAll() {
        String sqlQuery = "SELECT id, name, max_people, type, num_of_bed, num_of_bathroom, price, address " +
                "FROM accommodation";
        return jdbcTemplate.query(sqlQuery, accommodationRowMapper());
    }

    public List<Accommodation> findAllByDestination(String destination) {
        String sqlQuery = "SELECT id, name, max_people, type, num_of_bed, num_of_bathroom, price, address " +
                "FROM accommodation " +
                "WHERE address LIKE ? ";
        return jdbcTemplate.query(sqlQuery, accommodationRowMapper(), "%" + destination + "%");
    }

    public List<Accommodation> findPopularDestinations(String destination) {
        String sqlQuery = "SELECT address " +
                "FROM accommodation " +
                "WHERE address LIKE ? ";
        return jdbcTemplate.query(sqlQuery, addressMapper(), "%" + destination + "%");
    }

    private RowMapper<Accommodation> accommodationRowMapper() {
        return (rs, rowNum) -> {
            Accommodation accommodation = new Accommodation();
            accommodation.setId(rs.getLong("id"));
            accommodation.setName(rs.getString("name"));
            accommodation.setMaxPeople(rs.getInt("max_people"));
            accommodation.setType(rs.getString("type"));
            accommodation.setNumOfBed(rs.getInt("num_of_bed"));
            accommodation.setNumOfBathroom(rs.getInt("num_of_bathroom"));
            accommodation.setPrice(rs.getInt("price"));
            accommodation.setAddress(rs.getString("address"));

            return accommodation;
        };
    }

    private RowMapper<Accommodation> addressMapper() {
        return (rs, rowNum) -> {
            Accommodation accommodation = new Accommodation();
            accommodation.setAddress(rs.getString("address"));

            return accommodation;
        };
    }

}
