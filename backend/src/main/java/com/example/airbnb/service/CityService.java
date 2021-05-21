package com.example.airbnb.service;

import com.example.airbnb.dao.CityDAO;
import com.example.airbnb.dto.CityDTO;
import com.example.airbnb.dto.MainPageDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityService {
    private final CityDAO cityDAO;

    public CityService(CityDAO cityDAO) {
        this.cityDAO = cityDAO;
    }

    public MainPageDTO getMainPage() {
        return cityDAO.getMainPage();
    }

}
