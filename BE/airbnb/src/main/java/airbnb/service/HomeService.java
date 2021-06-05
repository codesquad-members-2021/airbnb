package airbnb.service;

import airbnb.domain.Category;
import airbnb.domain.City;
import airbnb.repository.CategoryRepository;
import airbnb.repository.CityRepository;
import airbnb.response.CityResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class HomeService {
    private final CityRepository cityRepository;
    private final CategoryRepository categoryRepository;

    public List<CityResponse> getNearbyDestinations() {
        return cityRepository.findAll()
                .stream().map(City::of).collect(Collectors.toList());
    }

    public List<Category> getLiveAnywhere() {
        return categoryRepository.findAll();
    }

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
