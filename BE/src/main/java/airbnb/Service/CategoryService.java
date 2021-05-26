package airbnb.Service;

import airbnb.dao.CategoryDao;
import airbnb.domain.Category;
import airbnb.dto.CategoryResponse;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoryService {

    private final CategoryDao categoryDao;

    public CategoryService(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    public List<Category> findAll() {
        return categoryDao.findAll();
    }

    public List<CategoryResponse> createAllToCategoryResponseList() {
        List<Category> categories = findAll();
        return categories.stream().map(category -> CategoryResponse.of(category, category.findMainImageUrl()))
                .collect(Collectors.toList());
    }
}
