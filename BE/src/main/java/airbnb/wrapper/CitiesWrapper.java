package airbnb.wrapper;

import airbnb.domain.City;

import java.util.List;

public class CitiesWrapper {

    private List<City> cities;

    public CitiesWrapper(List<City> cities) {
        this.cities = cities;
    }

    public List<City> getCities() {
        return cities;
    }
}
