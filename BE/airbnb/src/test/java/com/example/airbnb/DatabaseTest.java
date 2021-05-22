package com.example.airbnb;

import com.example.airbnb.domain.Accommodation;
import com.example.airbnb.repository.AccommodationDAO;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class DatabaseTest {

    @Autowired
    private AccommodationDAO accommodationDAO;

    private final Logger logger = LoggerFactory.getLogger(DatabaseTest.class);

    @Test
    void countAll() {
        int ret = accommodationDAO.countAllAccommodation();
        logger.info("countAll : {}",ret);
    }

    @Test
    void findById() {
        Accommodation accommodation = accommodationDAO.findById(1L);
        logger.info(accommodation.toString());
    }

}
