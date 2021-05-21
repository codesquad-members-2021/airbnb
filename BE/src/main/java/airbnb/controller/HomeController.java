package airbnb.controller;

import airbnb.Service.CityService;
import airbnb.wrapper.CitiesWrapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    private final CityService cityService;

    public HomeController(CityService cityService) {
        this.cityService = cityService;
    }

    @GetMapping
    public CitiesWrapper readCities() {
        return new CitiesWrapper(cityService.createAllToRequestList());
    }
}
