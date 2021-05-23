package com.example.airbnb;

import com.example.airbnb.repository.AccommodationDAO;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
class AirbnbApplicationTests {

	@Autowired
	private ApplicationContext ctx;

	@Autowired
	private AccommodationDAO accommodationDAO;

	private Logger logger = LoggerFactory.getLogger(AirbnbApplicationTests.class);


	@Test
	void contextLoads() {
		assertThat(ctx).isNotNull();
		logger.debug("ApplicationContext is not null");
	}

	@Test
	void LoggerNotNull() {
		assertThat(logger).isNotNull();
		logger.debug("Logger OK");
	}

}
