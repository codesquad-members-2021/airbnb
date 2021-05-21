package airbnb.Service;

import airbnb.dao.CityDao;
import org.springframework.stereotype.Service;

@Service
public class CityService {

    private final CityDao cityDao;

    public CityService(CityDao cityDao) {
        this.cityDao = cityDao;
    }
}
