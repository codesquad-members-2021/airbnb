package airbnb;

import com.fasterxml.jackson.annotation.JsonRootName;

import java.util.List;

@JsonRootName(value = "mainPage")
public class MainMockResponse {

    private String hiroImage;
    private List<CityResponse> cities;
    private List<Category> categories;

    public MainMockResponse(String hiroImage, List<CityResponse> cities, List<Category> categories) {
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

    public List<Category> getCategories() {
        return categories;
    }
}
