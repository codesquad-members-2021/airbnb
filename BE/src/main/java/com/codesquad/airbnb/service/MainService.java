package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dao.CategoryDAO;
import com.codesquad.airbnb.dao.LocationDAO;
import com.codesquad.airbnb.dto.MainDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainService {

    private final CategoryDAO categoryDAO;
    private final LocationDAO locationDAO;

    @Autowired
    public MainService(CategoryDAO categoryDAO, LocationDAO locationDAO) {
        this.categoryDAO = categoryDAO;
        this.locationDAO = locationDAO;
    }

    public MainDTO browseMainDTO() {
        MainDTO mainDTO = new MainDTO();
        mainDTO.setCategories(categoryDAO.findAll());
        mainDTO.setLocations(locationDAO.findAll());
        return mainDTO;
    }
}
