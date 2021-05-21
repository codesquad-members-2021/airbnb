package airbnb.controller;

import airbnb.Service.CategoryService;
import airbnb.Service.CityService;
import airbnb.Service.ImageService;
import airbnb.dto.MainPageResponse;
import airbnb.wrapper.MainPageWrapper;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    private final CityService cityService;
    private final CategoryService categoryService;
    private final ImageService imageService;

    public HomeController(CityService cityService, CategoryService categoryService, ImageService imageService) {
        this.cityService = cityService;
        this.categoryService = categoryService;
        this.imageService = imageService;
    }

    @GetMapping
    public MainPageWrapper home() {
        MainPageResponse mainPageResponse = MainPageResponse.of(imageService.findHiroImage(), cityService.createAllToCityResponseList(),
                categoryService.createAllToCategoryResponseList());
        return new MainPageWrapper(mainPageResponse);
    }
}
