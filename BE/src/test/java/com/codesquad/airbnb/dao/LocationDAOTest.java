package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Location;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class LocationDAOTest {

    private Logger logger = LoggerFactory.getLogger(LocationDAOTest.class);

    @Autowired
    private LocationDAO locationDAO;

    @Test
    void locationDAO_findById() {
        Location location = locationDAO.findById(1L);
        assertThat(location).isNotNull();
        assertThat(location.getName()).isEqualTo("서울");
        logger.info("location found: {}", location);
    }

    @Test
    void locationDAO_findAll() {
        List<Location> locations = locationDAO.findAll();
        assertThat(locations.get(0).getName()).isEqualTo("서울");
        assertThat(locations.get(1).getName()).isEqualTo("인천");
        assertThat(locations.get(2).getName()).isEqualTo("대구");
        assertThat(locations.get(3).getName()).isEqualTo("광주");
        assertThat(locations.get(4).getName()).isEqualTo("제주");
    }
}
