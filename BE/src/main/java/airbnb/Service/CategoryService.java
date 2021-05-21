package airbnb.Service;

import airbnb.dao.CategoryDao;
import airbnb.domain.Category;
import airbnb.dto.CategoryResponse;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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

        List<CategoryResponse> responsesList = new ArrayList<>();
        List<Category> categories = findAll();

        for (Category category : categories) {
            CategoryResponse categoryResponse = CategoryResponse.of(category, category.findMainImageUrl());
            responsesList.add(categoryResponse);
        }
        return responsesList;
    }
}
