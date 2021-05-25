package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dao.PropertyDao;
import com.codesquad.airbnb.dto.PriceSearchDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PropertyService {

    private PropertyDao propertyDao;

    @Autowired
    public PropertyService(PropertyDao propertyDao) {
        this.propertyDao = propertyDao;
    }

    public int getAveragePrice(Long locationId) {
        int average = 0;
        List<Integer> prices = propertyDao.findPricesByLocationId(locationId);

        for (Integer i : prices) {
            average += i;
        }

        return average / prices.size();
    }
}
