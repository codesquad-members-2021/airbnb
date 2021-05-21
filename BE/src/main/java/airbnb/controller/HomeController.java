package airbnb.controller;

import airbnb.Service.CategoryService;
import airbnb.Service.CityService;
import airbnb.dto.MainPageResponse;
import airbnb.wrapper.MainPageWrapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    private final CityService cityService;
    private final CategoryService categoryService;

    public HomeController(CityService cityService, CategoryService categoryService) {
        this.cityService = cityService;
        this.categoryService = categoryService;
    }

    @GetMapping
    public MainPageWrapper readCities() {
        MainPageResponse mainPageResponse = new MainPageResponse(cityService.createAllToCityResponseList(), categoryService.createAllToCategoryResponseList());
        return new MainPageWrapper(mainPageResponse);
    }
}
