package mj.airbnb.domain.accommodation;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class AccommodationRepository {

    private final JdbcTemplate jdbcTemplate;

    public AccommodationRepository(DataSource dataSource){
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Accommodation> findAll() {
        String sqlQuery = "SELECT id, name, max_people, type, num_of_bed, num_of_bathroom, cost " +
                          "FROM accommodation";
        return jdbcTemplate.query(sqlQuery, accommodationRowMapper());
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
            accommodation.setCost(rs.getInt("cost"));

            return accommodation;
        };
    }
}
