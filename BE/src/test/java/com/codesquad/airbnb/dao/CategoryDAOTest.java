package com.codesquad.airbnb.dao;

import com.codesquad.airbnb.domain.Category;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class CategoryDAOTest {

    private Logger logger = LoggerFactory.getLogger(CategoryDAOTest.class);

    @Autowired
    private CategoryDAO categoryDAO;

    @Test
    void CategoryDAO_findAll() {
        List<Category> categories = categoryDAO.findAll();
        assertThat(categories.size()).isGreaterThanOrEqualTo(4);
    }
}
