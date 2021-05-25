package com.team19.airbnb.repository;

import com.team19.airbnb.domain.Booking;
import com.team19.airbnb.domain.User;
import com.team19.airbnb.domain.room.Host;
import com.team19.airbnb.domain.room.Location;
import com.team19.airbnb.domain.room.Room;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;

import static org.assertj.core.api.Assertions.*;

@SpringBootTest
@Transactional
class BookingRepositoryTest {
  
}
