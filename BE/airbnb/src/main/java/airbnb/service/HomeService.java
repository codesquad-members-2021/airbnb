package airbnb.service;

import airbnb.domain.Category;
import airbnb.domain.City;
import airbnb.domain.Room;
import airbnb.repository.CategoryRepository;
import airbnb.repository.CityRepository;
import airbnb.repository.RoomRepository;
import airbnb.response.CityResponse;
import airbnb.response.PriceGraphResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
@RequiredArgsConstructor
public class HomeService {
    private final CityRepository cityRepository;
    private final CategoryRepository categoryRepository;
    private final RoomRepository roomRepository;

    public List<CityResponse> getNearbyDestinations() {
        return cityRepository.findAll()
                .stream().map(City::of).collect(Collectors.toList());
    }

    public List<Category> getLiveAnywhere() {
        return categoryRepository.findAll();
    }

    public PriceGraphResponse getPriceDistribution() {
        List<Room> rooms = roomRepository.findAll();
        Map<Integer, Integer> graph = new HashMap<>();

        for (Room room : rooms) {
            graph.merge(room.getPricePerNight(), 1, Integer::sum);
        }

        return new PriceGraphResponse(graph.entrySet().stream().sorted(Map.Entry.comparingByKey()));
    }
}
