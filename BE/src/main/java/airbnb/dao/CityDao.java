package airbnb.dao;

import airbnb.domain.City;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
public class CityDao {

    private JdbcTemplate jdbcTemplate;
    private CityMapper cityMapper = new CityMapepr;

    public CityDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<City> findAll(){
        String sql = "SELECT id, name FROM city";
        return jdbcTemplate.query(sql,CityMapper);
    }
}
