package com.codesquad.airbnb.service;

import com.codesquad.airbnb.dto.PriceSearchDTO;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
class PropertyServiceTest {

    private Logger logger = LoggerFactory.getLogger(PropertyServiceTest.class);

    private PropertyService propertyService;

    @Autowired
    public PropertyServiceTest(PropertyService propertyService) {
        this.propertyService = propertyService;
    }

    @Test
    void propertyService_averagePriceTest() {
        int averagePrice = propertyService.getAveragePrice(1L);

        assertThat(averagePrice).isGreaterThan(0);
        logger.info("Average Price of location 1L is: " + averagePrice);
    }

    @Test
    void propertyService_priceCountTest() {
        int[] priceCount = propertyService.getPropertyCountsByPriceRange(1L);

        for (int i : priceCount) {
            System.out.print(i + " ");
        }
    }
}
