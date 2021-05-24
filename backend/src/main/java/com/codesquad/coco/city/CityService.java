package com.codesquad.coco.city;

import com.codesquad.coco.utils.DTOConverter;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CityService {

    private CityDAO cityDAO;

    public CityService(CityDAO cityDAO) {
        this.cityDAO = cityDAO;
    }

    public List<CityDTO> findAllCityDTOs(){
        List<City> cities = cityDAO.findAll();
        return cities.stream()
                .map(DTOConverter::cityToCityDTO)
                .collect(Collectors.toList());
    }

}
