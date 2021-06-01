package mj.airbnb.domain.accommodation;

import mj.airbnb.web.dto.SearchRequestDto;

import static mj.airbnb.util.RowMapper.*;
import static mj.airbnb.util.SqlQuery.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class AccommodationRepository {

    private final JdbcTemplate jdbcTemplate;
    private final Logger logger = LoggerFactory.getLogger(AccommodationRepository.class);

    public AccommodationRepository(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Accommodation> findAllByConditions(SearchRequestDto conditions) {

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions) &&
                isPresentOfPrice(conditions) && isPresentOfPeople(conditions)) {

            logger.info("지역, 날짜, 가격, 인원 조건 따라 숙소 조회 ");

            return jdbcTemplate.query(ACCOMMODATIONS_BY_DESTINATION_AND_DATE_AND_PRICE_AND_PEOPLE_SQL, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%",
                    conditions.getCheckInDate(), conditions.getCheckOutDate(), conditions.getMinPrice(), conditions.getMaxPrice(),
                    conditions.getNumOfAdult() + conditions.getNumOfChild() + conditions.getNumOfInfant());
        }

        if (isPresentOfDate(conditions) && isPresentOfPrice(conditions) && isPresentOfPeople(conditions)) {

            logger.info("날짜, 가격, 인원 조건 따라 숙소 조회 ");

            return jdbcTemplate.query(ACCOMMODATIONS_BY_DATE_AND_PRICE_AND_PEOPLE_SQL, ACCOMMODATION_ROW_MAPPER,
                    conditions.getCheckInDate(), conditions.getCheckOutDate(), conditions.getMinPrice(), conditions.getMaxPrice(),
                    conditions.getNumOfAdult() + conditions.getNumOfChild() + conditions.getNumOfInfant());
        }

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions) && isPresentOfPrice(conditions)) {

            logger.info("지역, 날짜, 가격 조건에 따라 숙소 조회 ");

            return jdbcTemplate.query(ACCOMMODATIONS_BY_DESTINATION_AND_DATE_AND_PRICE_SQL, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%",
                    conditions.getCheckInDate(), conditions.getCheckOutDate(), conditions.getMinPrice(), conditions.getMaxPrice());
        }

        if (isPresentOfDate(conditions) && isPresentOfPrice(conditions)) {

            logger.info("날짜, 가격 조건에 따라 숙소 조회 ");

            return jdbcTemplate.query(ACCOMMODATIONS_BY_DATE_AND_PRICE_SQL, ACCOMMODATION_ROW_MAPPER,
                    conditions.getCheckInDate(), conditions.getCheckOutDate(), conditions.getMinPrice(), conditions.getMaxPrice());
        }

        if (isPresentOfDestination(conditions) && isPresentOfDate(conditions)) {

            logger.info("지역, 날짜 조건에 따라 숙소 조회 ");

            return jdbcTemplate.query(ACCOMMODATIONS_BY_DESTINATION_AND_DATE_SQL, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%",
                    conditions.getCheckInDate(), conditions.getCheckOutDate());
        }

        if (isPresentOfDate(conditions)) {

            logger.info("날짜 조건에 따라 숙소 조회 ");

            return jdbcTemplate.query(ACCOMMODATIONS_BY_DATE_SQL, ACCOMMODATION_ROW_MAPPER, conditions.getCheckInDate(), conditions.getCheckOutDate());
        }

        if (isPresentOfDestination(conditions)) {

            logger.info("지역 조건에 따라 숙소 조회 ");

            return jdbcTemplate.query(ACCOMMODATIONS_BY_DESTINATION_SQL, ACCOMMODATION_ROW_MAPPER, "%" + conditions.getDestination() + "%");
        }

        return jdbcTemplate.query(ACCOMMODATIONS_SQL, ACCOMMODATION_ROW_MAPPER);
    }

    public List<Accommodation> findPopularDestinations(String destination) {
        String sqlQuery = "SELECT address " +
                "FROM accommodation " +
                "WHERE address LIKE ? ";
        return jdbcTemplate.query(sqlQuery, ADDRESS_ROW_MAPPER, "%" + destination + "%");
    }

    public Accommodation findById(Long id) {
        String sqlQuery = "SELECT in_detail.host_name, in_detail.description, acc.name, acc.max_num_of_people, acc.type, acc.num_of_bed, acc.num_of_bathroom, acc.price, acc.address " +
                "FROM accommodation acc INNER JOIN accommodation_detail in_detail " +
                "ON acc.id = in_detail.accommodation_id " +
                "WHERE acc.id = ?; ";

        return jdbcTemplate.queryForObject(sqlQuery, ACCOMMODATION_DETAIL_ROW_MAPPER, id);
    }

    public List<String> findAllImagesByAccommodationId(Long id) {
        String sqlQuery = "SELECT url FROM image WHERE accommodation_id = ?; ";

        return jdbcTemplate.query(sqlQuery, IMAGE_ROW_MAPPER, id);
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
