package airbnb.controller;

import airbnb.domain.*;
import airbnb.response.*;
import airbnb.service.HomeService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;


@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class HomeController {
    private final HomeService homeService;

    @GetMapping
    public HomeResponse home() {
        return new HomeResponse(homeService.getNearbyDestinations(), homeService.getLiveAnywhere());
    }

    @GetMapping("/price")
    public PriceGraphResponse getPriceDistribution() {
        return homeService.getPriceDistribution();
    }
}
