package airbnb.controller;

import airbnb.dao.CityDao;
import airbnb.domain.City;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MainController {

    private CityDao cityDao;

    public MainController(CityDao cityDao) {
        this.cityDao = cityDao;
    }

    @GetMapping("/main")
    public List<City> readCities(){
        return cityDao.findAll();
    }
}
