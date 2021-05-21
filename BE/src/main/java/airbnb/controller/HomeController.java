package airbnb.controller;

import airbnb.dao.CityDao;
import airbnb.wrapper.CitiesWrapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    private CityDao cityDao;

    public HomeController(CityDao cityDao) {
        this.cityDao = cityDao;
    }

    @GetMapping
    public CitiesWrapper readCities() {
        return new CitiesWrapper(cityDao.findAll());
    }
}
