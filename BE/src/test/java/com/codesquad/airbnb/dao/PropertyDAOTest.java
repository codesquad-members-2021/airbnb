package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Property;
import com.codesquad.airbnb.dto.PropertyDTO;
import com.codesquad.airbnb.dto.PropertyDetailResponseDTO;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class PropertyDAOTest {
    private Logger logger = LoggerFactory.getLogger(PropertyDAOTest.class);

    @Autowired
    PropertyDAO propertyDao;

    @Test
    void propertyDao_findById() {
        Property property = propertyDao.findById(1L);
        assertThat(property).isNotNull();
        logger.info("Find property by propertyDao: {}",
                property);
    }

    @Test
    void propertyDao_findByAll() {
        List<Property> properties = propertyDao.findAll();
        for (Property property : properties) {
            assertThat(property).isNotNull();
            logger.info("Find property by propertyDao: {}",
                    property);
        }
    }

    @Test
    void propertyDao_findBy() {
        List<PropertyDTO> properties = propertyDao.findBy(1L, LocalDate.of(2021, 5, 20), LocalDate.of(2021, 5, 23),
                10000, 100000, 2);
        for (PropertyDTO property : properties) {
            assertThat(property).isNotNull();
            logger.info("Find property by propertyDao: {}",
                    property);
        }
    }

    @Test
    void propertyDao_findByWishList() {
        List<PropertyDTO> properties = propertyDao.findByWishList();
        for (PropertyDTO property : properties) {
            assertThat(property).isNotNull();
            logger.info("Find property by propertyDao: {}",
                    property);
        }
    }

    @Test
    void propertyDao_findPricesTest() {
        List<Integer> prices = propertyDao.findPricesByLocationId(1L);

        assertThat(prices.size()).isEqualTo(6);
        assertThat(prices.get(0)).isEqualTo(300000);
        assertThat(prices.get(1)).isEqualTo(60000);
    }

    @Test
    void propertyDao_findPropertyDetailByPropertyId() {
        PropertyDetailResponseDTO property = propertyDao.findPropertyDetailByPropertyId(1L);
        assertThat(property).isNotNull();
        logger.info("Find property by propertyDao: {}",
                property);

    }
}
