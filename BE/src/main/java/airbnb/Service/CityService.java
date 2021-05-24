package airbnb.Service;

import airbnb.dao.CityDao;
import airbnb.domain.City;
import airbnb.domain.Location;
import airbnb.dto.CityResponse;
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

    public List<CityResponse> createAllToCityResponseList() {
        Location codeSquadLocation = new Location(37.491016774047345, 127.03339554026415);
        List<CityResponse> responseList = new ArrayList<>();
        List<City> cities = findAll();

        for (City city : cities) {
            CityResponse cityResponse = CityResponse.of(city, city.findMainImageUrl(),codeSquadLocation);
            responseList.add(cityResponse);
        }
        return responseList;
    }
}
