package airbnb.wrapper;

import airbnb.dto.CategoryResponse;

import java.util.List;

public class CategoriesWrapper {

    private List<CategoryResponse> categories;

    public CategoriesWrapper(List<CategoryResponse> categories) {
        this.categories = categories;
    }

    public List<CategoryResponse> getCategories() {
        return categories;
    }
}
