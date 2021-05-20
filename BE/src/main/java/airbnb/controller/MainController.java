package airbnb.controller;

import airbnb.dao.CityDao;
import airbnb.wrapper.CitiesWrapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    private CityDao cityDao;

    public MainController(CityDao cityDao) {
        this.cityDao = cityDao;
    }

    @GetMapping("/main")
    public CitiesWrapper readCities() {
        return new CitiesWrapper(cityDao.findAll());
    }
}
