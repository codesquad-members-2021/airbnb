package mj.airbnb.domain.accommodation;

import mj.airbnb.web.AccommodationController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Optional;

@Repository
public class AccommodationRepository {

    private final JdbcTemplate jdbcTemplate;
    private final Logger logger = LoggerFactory.getLogger(AccommodationController.class);

    public AccommodationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Accommodation> findAll() {
        String sqlQuery = "SELECT id, name, max_people, type, num_of_bed, num_of_bathroom, cost, address " +
                "FROM accommodation";
        return jdbcTemplate.query(sqlQuery, accommodationRowMapper());
    }

    public List<Accommodation> findAllByDestination(String destination) {
        String sqlQuery = "SELECT id, name, max_people, type, num_of_bed, num_of_bathroom, cost, address " +
                "FROM accommodation " +
                "WHERE address LIKE ? ";
        return jdbcTemplate.query(sqlQuery, accommodationRowMapper(), "%" + destination + "%");
    }

    public List<Accommodation> findAllByDestinationAndDate(
            String destination, String checkInDate, String checkOutDate) {

        // JOIN이 아니라 다르게 접근해야 함
        // 먼저 체크인과 체크아웃 날짜가 선 예약여부 확인하는 식으로
        String sqlQuery = "SELECT acc.id, acc.name, acc.max_people, acc.type, acc.num_of_bed, acc.num_of_bathroom, acc.cost, acc.address " +
                "FROM accommodation acc INNER JOIN reservation_date in_out " +
                "ON acc.id = in_out.reservation_accommodation_id " +
                "WHERE acc.address LIKE ? " +
                "AND in_out.reserved_date NOT BETWEEN ? AND ? ";
        return jdbcTemplate.query(sqlQuery, accommodationRowMapper(), "%" + destination + "%", checkInDate, checkOutDate);
    }

    public List<Accommodation> findPopularDestinations(String destination) {
        String sqlQuery = "SELECT address " +
                "FROM accommodation " +
                "WHERE address LIKE ? ";
        return jdbcTemplate.query(sqlQuery, stringRowMapper(), "%" + destination + "%");
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
            accommodation.setAddress(rs.getString("address"));

            return accommodation;
        };
    }


    private RowMapper<Accommodation> stringRowMapper() {
        return (rs, rowNum) -> {
            Accommodation accommodation = new Accommodation();
            accommodation.setAddress(rs.getString("address"));

            return accommodation;
        };
    }

}
