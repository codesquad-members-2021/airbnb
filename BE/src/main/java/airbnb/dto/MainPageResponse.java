package airbnb.dto;

import java.util.List;

public class MainPageResponse {

    private final List<CityResponse> cities;
    private final List<CategoryResponse> categories;

    public MainPageResponse(List<CityResponse> cities, List<CategoryResponse> categories) {
        this.cities = cities;
        this.categories = categories;
    }

    public List<CityResponse> getCities() {
        return cities;
    }

    public List<CategoryResponse> getCategories() {
        return categories;
    }
}
