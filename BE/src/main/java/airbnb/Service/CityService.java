package airbnb.Service;

import airbnb.dao.CityDao;
import airbnb.domain.City;
import airbnb.dto.CityRequest;
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

    public List<CityRequest> createAllToRequestList() {

        List<CityRequest> requestList = new ArrayList<>();
        List<City> cities = findAll();

        for (City city : cities) {
            CityRequest cityRequest = CityRequest.of(city, city.findMainImageUrl());
            requestList.add(cityRequest);
        }

        return requestList;
    }
}
