package mj.airbnb.domain.accommodation;

import mj.airbnb.web.dto.SearchRequestDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class AccommodationRepository {

    private static final String BASE_SQL = "SELECT name, max_num_of_people, type, num_of_bed, num_of_bathroom, price, address " +
            "FROM accommodation ";
    private static final String DESTINATION_CONDITION_SQL = "address LIKE ? ";
    private static final String DATE_CONDITION_SQL = "id IN " +
            "( " +
            "   SELECT accommodation_id FROM reservation" +
            "   WHERE (? >= check_out_date) OR (? <= check_in_date)" +
            ") ";
    private static final String PRICE_CONDITION_SQL = "(? <= price AND price <= ?) ";
    private static final String PEOPLE_CONDITION_SQL = "max_num_of_people >= ? ";

    private static final RowMapper<Accommodation> ACCOMMODATION_ROW_MAPPER = (rs, rowNum) -> {
        Accommodation accommodation = new Accommodation();
        accommodation.setName(rs.getString("name"));
        accommodation.setMaxNumOfPeople(rs.getInt("max_num_of_people"));
        accommodation.setType(rs.getString("type"));
        accommodation.setNumOfBed(rs.getInt("num_of_bed"));
        accommodation.setNumOfBathroom(rs.getInt("num_of_bathroom"));
        accommodation.setPrice(rs.getBigDecimal("price"));
        accommodation.setAddress(rs.getString("address"));

        return accommodation;
    };

    private static final RowMapper<Accommodation> ADDRESS_ROW_MAPPER = (rs, rowNum) -> {
        Accommodation accommodation = new Accommodation();
        accommodation.setAddress(rs.getString("address"));

        return accommodation;
    };

    private final JdbcTemplate jdbcTemplate;
    private final Logger logger = LoggerFactory.getLogger(AccommodationRepository.class);

    public AccommodationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Accommodation> findAllByConditions(SearchRequestDto conditions) {

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions) &&
                isPresentOfPrice(conditions) && isPresentOfPeople(conditions)) {

            logger.info("지역, 날짜, 가격, 인원 조건 따라 숙소 조회 ");

            String sqlQuery = BASE_SQL +
                    "WHERE " + DESTINATION_CONDITION_SQL +
                    "AND " + DATE_CONDITION_SQL +
                    "AND " + PRICE_CONDITION_SQL +
                    "AND " + PEOPLE_CONDITION_SQL;
            return jdbcTemplate.query(sqlQuery, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%",
                    conditions.getCheckInDate(), conditions.getCheckOutDate(), conditions.getMinPrice(), conditions.getMaxPrice(),
                    conditions.getNumOfAdult() + conditions.getNumOfChild() + conditions.getNumOfInfant());
        }

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions) && isPresentOfPrice(conditions)) {

            logger.info("지역, 날짜, 가격 조건에 따라 숙소 조회 ");

            String sqlQuery = BASE_SQL +
                    "WHERE " + DESTINATION_CONDITION_SQL +
                    "AND " + DATE_CONDITION_SQL +
                    "AND " + PRICE_CONDITION_SQL;
            return jdbcTemplate.query(sqlQuery, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%",
                    conditions.getCheckInDate(), conditions.getCheckOutDate(), conditions.getMinPrice(), conditions.getMaxPrice());
        }

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions)) {

            logger.info("지역, 날짜 조건에 따라 숙소 조회 ");

            String sqlQuery = BASE_SQL +
                    "WHERE " + DESTINATION_CONDITION_SQL +
                    "AND " + DATE_CONDITION_SQL;
            return jdbcTemplate.query(sqlQuery, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%",
                    conditions.getCheckInDate(), conditions.getCheckOutDate());
        }

        if (isPresentOfDestination(conditions)) {

            logger.info("지역 조건에 따라 숙소 조회 ");

            String sqlQuery = BASE_SQL +
                    "WHERE " + DESTINATION_CONDITION_SQL;

            return jdbcTemplate.query(sqlQuery, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%");
        }

        return jdbcTemplate.query(BASE_SQL, ACCOMMODATION_ROW_MAPPER);
    }

    public List<Accommodation> findPopularDestinations(String destination) {
        String sqlQuery = "SELECT address " +
                "FROM accommodation " +
                "WHERE address LIKE ? ";
        return jdbcTemplate.query(sqlQuery, ADDRESS_ROW_MAPPER, "%" + destination + "%");
    }

    private boolean isPresentOfDestination(SearchRequestDto requestDto) {
        return requestDto.getDestination() != null;
    }

    private boolean isPresentOfDate(SearchRequestDto requestDto) {
        return requestDto.getCheckInDate() != null && requestDto.getCheckOutDate() != null;
    }

    private boolean isPresentOfPrice(SearchRequestDto requestDto) {
        return requestDto.getMinPrice() != null && requestDto.getMaxPrice() != null;
    }

    private boolean isPresentOfPeople(SearchRequestDto requestDto) {
        return requestDto.getNumOfAdult() != null && requestDto.getNumOfChild() != null && requestDto.getNumOfInfant() != null;
    }

}
