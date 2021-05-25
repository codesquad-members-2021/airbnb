package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dao.PropertyDao;
import com.codesquad.airbnb.dto.PriceSearchDTO;
import com.codesquad.airbnb.dto.PropertiesResponseDto;
import com.codesquad.airbnb.dto.PropertyDetailResponseDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class PropertyService {

    private PropertyDao propertyDao;

    @Autowired
    public PropertyService(PropertyDao propertyDao) {
        this.propertyDao = propertyDao;
    }

    int getAveragePrice(Long locationId) {
        int average = 0;
        List<Integer> prices = propertyDao.findPricesByLocationId(locationId);

        for (Integer i : prices) {
            average += i;
        }

        return average / prices.size();
    }

    int[] getPropertyCountsByPriceRange(Long locationId) {
        int[] priceCounts = new int[20];
        List<Integer> prices = propertyDao.findPricesByLocationId(locationId);

        for (Integer i : prices) {
            priceCounts[i / 50000]++;
        }

        return priceCounts;
    }

    public PriceSearchDTO priceSearch(Long locationId) {
        PriceSearchDTO priceSearchDTO = new PriceSearchDTO();
        priceSearchDTO.setAveragePrice(getAveragePrice(locationId));
        priceSearchDTO.setNumberOfRooms(getPropertyCountsByPriceRange(locationId));

        return priceSearchDTO;
    }

    public PropertiesResponseDto findBy(Long locationId, LocalDate checkIn, LocalDate checkOut, int minPrice, int maxPrice, int adult, int children, int infant) {
        return propertyDao.findBy(locationId, checkIn, checkOut, minPrice, maxPrice, adult, children, infant);
    }

    public PropertyDetailResponseDto findPropertyDetailByPropertyId (Long propertyId) {
        return propertyDao.findPropertyDetailByPropertyId(propertyId);
    }
}
