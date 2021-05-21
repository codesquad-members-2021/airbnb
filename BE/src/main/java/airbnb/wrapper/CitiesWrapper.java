package airbnb.wrapper;

import airbnb.dto.CityResponse;

import java.util.List;

public class CitiesWrapper {

    private List<CityResponse> cities;

    public CitiesWrapper(List<CityResponse> cities) {
        this.cities = cities;
    }

    public List<CityResponse> getCities() {
        return cities;
    }
}
