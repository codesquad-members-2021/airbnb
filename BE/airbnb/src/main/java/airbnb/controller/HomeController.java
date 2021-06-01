package airbnb.controller;

import airbnb.domain.*;
import airbnb.repository.CategoryRepository;
import airbnb.repository.CityRepository;
import airbnb.response.*;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;


@RestController
@RequiredArgsConstructor
@RequestMapping("/api")
public class HomeController {
    private final CityRepository cityRepository;
    private final CategoryRepository categoryRepository;

    @GetMapping
    public ResponseEntity<HomeResponse> home() {
        List<CityResponse> nearbyDestinations = cityRepository.findAll()
                .stream().map(City::of).collect(Collectors.toList());
        List<Category> liveAnywhere = categoryRepository.findAll();
        return ResponseEntity.ok(new HomeResponse(nearbyDestinations, liveAnywhere));
    }

    @GetMapping("/price")
    public Map<Integer, Integer> getPriceDistribution() {
        int minPrice = 11000;
        int maxPrice = 1000000;
        Map<Integer, Integer> graph = new LinkedHashMap<>();
        for (int i = minPrice; i < maxPrice; i += 10000) {
            graph.put(i, (int) (Math.random() * 300));
        }
        return graph;
    }
}
