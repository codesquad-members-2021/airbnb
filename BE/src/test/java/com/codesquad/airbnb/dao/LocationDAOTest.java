package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Location;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

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
}
