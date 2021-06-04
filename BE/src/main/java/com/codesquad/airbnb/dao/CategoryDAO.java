package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
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
        // TODO: 메서드 실행 시 RowMapper 인스턴스가 매번 생성된다.
        RowMapper<Category> categoryMapper = (rs, rowNum) -> new Category(rs.getLong("id"), rs.getString("name"), rs.getString("image_url"));
        return jdbcTemplate.query(sql, categoryMapper);
    }
}
