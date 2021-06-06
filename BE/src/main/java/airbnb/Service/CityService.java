package airbnb.Service;

import airbnb.dao.CityDao;
import airbnb.domain.City;
import airbnb.domain.Location;
import airbnb.dto.CityResponse;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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
        List<City> cities = findAll();
        return cities.stream().map(city -> CityResponse.of(city, city.findMainImageUrl(), codeSquadLocation))
                .collect(Collectors.toList());
    }
}
