package airbnb.Service;

import airbnb.dao.CityDao;
import airbnb.domain.City;
import airbnb.dto.CityResponse;
import airbnb.wrapper.CitiesWrapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CityService {

    private final CityDao cityDao;

    public CityService(CityDao cityDao) {
        this.cityDao = cityDao;
    }

    public List<City> findAll() {
        return cityDao.findAll();
    }

    public CitiesWrapper createAllToRequestList() {

        List<CityResponse> responseList = new ArrayList<>();
        List<City> cities = findAll();

        for (City city : cities) {
            CityResponse cityResponse = CityResponse.of(city, city.findMainImageUrl());
            responseList.add(cityResponse);
        }
        return new CitiesWrapper(responseList);
    }
}
