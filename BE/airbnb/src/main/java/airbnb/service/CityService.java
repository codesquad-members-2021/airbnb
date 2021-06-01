package airbnb.service;

import airbnb.domain.City;
import airbnb.repository.CityRepository;
import airbnb.response.CityResponse;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CityService {
    private final CityRepository cityRepository;

    public CityService(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }

    public List<CityResponse> findNearbyDestinations() {
        return cityRepository.findAll()
                .stream().map(City::of).collect(Collectors.toList());
    }
}
