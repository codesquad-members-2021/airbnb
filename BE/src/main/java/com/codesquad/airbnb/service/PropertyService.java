package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dao.GetPropertyModel;
import com.codesquad.airbnb.dao.PropertyDAO;
import com.codesquad.airbnb.dto.price.PriceSearchDTO;
import com.codesquad.airbnb.dto.property.PropertiesResponseDTO;
import com.codesquad.airbnb.dto.property.PropertyDTO;
import com.codesquad.airbnb.dto.property.PropertyDetailResponseDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

@Service
public class PropertyService {

    private final int DEFAULT_DIFF = 1;

    private PropertyDAO propertyDao;

    @Autowired
    public PropertyService(PropertyDAO propertyDao) {
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

    public PropertiesResponseDTO findBy(GetPropertyModel getPropertyModel) {
        long diff = DEFAULT_DIFF;

        if (getPropertyModel.getCheckIn() != null && getPropertyModel.getCheckOut() != null) {
            diff = ChronoUnit.DAYS.between(getPropertyModel.getCheckIn(), getPropertyModel.getCheckOut());
        }

        int maxOccupancy = getPropertyModel.getAdult() + getPropertyModel.getChildren() + getPropertyModel.getInfant();

        List<PropertyDTO> propertyDTOS = propertyDao.findBy(getPropertyModel, maxOccupancy);

        long finalDiff = diff;

        propertyDTOS
                .forEach(propertyDTO1 -> {
                            propertyDTO1.setImages(propertyDao.findImageByPropertyId(propertyDTO1.getPropertyId()));
                            propertyDTO1.setTotalPrice(finalDiff);
                        }
                );

        return new PropertiesResponseDTO(propertyDTOS);
    }

    public PropertiesResponseDTO findBookmarkTrue() {
        List<PropertyDTO> propertyDTOS = propertyDao.findBookmarkTrue();
        propertyDTOS
                .forEach(propertyDTO1 -> propertyDTO1.setImages(propertyDao.findImageByPropertyId(propertyDTO1.getPropertyId()))
                );
        return new PropertiesResponseDTO(propertyDTOS);
    }

    public PropertyDetailResponseDTO findPropertyDetailByPropertyId(Long propertyId) {
        return propertyDao.findPropertyDetailByPropertyId(propertyId);
    }
}
