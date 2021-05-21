package com.example.airbnb.repository;

import com.example.airbnb.domain.Accommodation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class AccommodationDAO {

    private Logger logger = LoggerFactory.getLogger(Accommodation.class);


    private JdbcTemplate jdbcTemplate;
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    public AccommodationDAO(DataSource dataSource){
        jdbcTemplate = new JdbcTemplate(dataSource);
        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    public int countAllAccommodation(){
        String sql = "SELECT COUNT(*) FROM accommodation";
        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    public Accommodation findById(Long id){
        String sql = "SELECT * FROM accommodation WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[] {id} ,(rs, rowNum) -> {
          Accommodation accommodation = new Accommodation();

           accommodation.setId(rs.getLong("id"));
           accommodation.setTitle(rs.getString("title"));
           return accommodation;
        });
    }

    public List<Accommodation> findAll(){
        String sql = "SELECT * FROM accommodation";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Accommodation accommodation = new Accommodation();
            accommodation.setId(rs.getLong("id"));
            accommodation.setTitle(rs.getString("title"));
            accommodation.setReviewRating(rs.getDouble("reviewRating"));
            accommodation.setReviewCount(rs.getDouble("reviewCount"));
            accommodation.setCharge(rs.getInt("charge"));
            accommodation.setBadge(rs.getString("badge"));
            accommodation.setImage(rs.getString("image"));
            accommodation.setIsLike(rs.getBoolean("isLike"));
            return accommodation;
        });
    }

    public void insert(Accommodation accommodation){
        String sql = "INSERT INTO accommodation(title) VALUES(?)";
        jdbcTemplate.update(sql, accommodation.getTitle());
    }

    public void delete(Accommodation accommodation){
        String sql = "delete FROM accommodation WHERE title = ?";
        jdbcTemplate.update(sql, accommodation.getTitle());
    }

}
