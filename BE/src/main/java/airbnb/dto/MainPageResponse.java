package airbnb.dto;

import airbnb.domain.Image;

import java.util.List;

public class MainPageResponse {

    private final String heroImage;
    private final List<CityResponse> cities;
    private final List<CategoryResponse> categories;

    private MainPageResponse(String heroImage, List<CityResponse> cities, List<CategoryResponse> categories) {
        this.heroImage = heroImage;
        this.cities = cities;
        this.categories = categories;
    }

    public String getHeroImage() {
        return heroImage;
    }

    public List<CityResponse> getCities() {
        return cities;
    }

    public List<CategoryResponse> getCategories() {
        return categories;
    }

    public static MainPageResponse of(Image heroImage, List<CityResponse> cities, List<CategoryResponse> categories) {
        return new MainPageResponse(heroImage.getUrl(), cities, categories);
    }
}
