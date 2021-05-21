package airbnb.dao;

import airbnb.domain.Category;
import airbnb.mapper.CategoryMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryDao {

    private final JdbcTemplate jdbcTemplate;
    private final ImageDao imageDao;
    private final CategoryMapper categoryMapper = new CategoryMapper();


    public CategoryDao(JdbcTemplate jdbcTemplate, ImageDao imageDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.imageDao = imageDao;
    }

    public List<Category> findAll() {
        String sql = "SELECT id, name FROM category";
        List<Category> categories = jdbcTemplate.query(sql, categoryMapper);
        categories.forEach(category -> category.setImages(imageDao.findByCategoryId(category.getId())));
        return categories;
    }
}
