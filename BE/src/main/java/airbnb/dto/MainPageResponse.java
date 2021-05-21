package airbnb.dto;

import airbnb.domain.Image;

import java.util.List;

public class MainPageResponse {

    private final String hiroImage;
    private final List<CityResponse> cities;
    private final List<CategoryResponse> categories;

    private MainPageResponse(String hiroImage, List<CityResponse> cities, List<CategoryResponse> categories) {
        this.hiroImage = hiroImage;
        this.cities = cities;
        this.categories = categories;
    }

    public String getHiroImage() {
        return hiroImage;
    }

    public List<CityResponse> getCities() {
        return cities;
    }

    public List<CategoryResponse> getCategories() {
        return categories;
    }

    public static MainPageResponse of(Image hiroImage, List<CityResponse> cities, List<CategoryResponse> categories) {
        return new MainPageResponse(hiroImage.getUrl(), cities, categories);
    }
}
