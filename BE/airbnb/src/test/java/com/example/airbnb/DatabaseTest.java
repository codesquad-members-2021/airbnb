package com.example.airbnb;

import com.example.airbnb.domain.Accommodation;
import com.example.airbnb.repository.AccommodationRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@SpringBootTest
public class DatabaseTest {

    @Autowired
    private AccommodationRepository accommodationRepository;

    private final Logger logger = LoggerFactory.getLogger(DatabaseTest.class);

    @Test()
    @DisplayName("Create")
    void insertData() {
        //System.out.println(accommodationService.insert("샘플숙소3"));
        //System.out.println(accommodationService.delete("샘플숙소3"));
    }


    @Test()
    @DisplayName("Read")
    void findById() {
        Accommodation accommodation = accommodationRepository.findById(1L);
        logger.info(accommodation.toString());
        //System.out.println(accommodationService.findById(1L).getTitle());

    }



    @Test()
    @DisplayName("Count Entity")
    void countAll() {
        System.out.println(accommodationRepository.countAllAccommodation());
        //logger.info("countAll : {}",ret);

    }

    @Test
    @DisplayName("Update")
    void update() {
        //int ret = accommodationDAO.
    }

    @Test()
    @DisplayName("Delete")
    void deleteData() {
        //System.out.println(accommodationService.insert("샘플숙소3"));
        //System.out.println(accommodationService.delete("샘플숙소3"));
    }

    // @todo 모든 DAO 함수에 대하여 유효성 검증하기
}
