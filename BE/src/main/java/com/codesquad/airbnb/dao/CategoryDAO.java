package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CategoryDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public CategoryDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Category> findAll() {
        String sql = "SELECT id, name, image_url FROM category";
        RowMapper<Category> categoryMapper = new RowMapper<Category>() {
            @Override
            public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Category(rs.getString("name"), rs.getString("image_url"));
            }
        };
        return jdbcTemplate.query(sql, categoryMapper);
    }
}
