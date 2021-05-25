package com.example.airbnb.domain;

import java.time.LocalDate;

public class Reservation {

    private Long id;
    private Long AccommodationId;
    private LocalDate checkin;
    private LocalDate checkout;
    private Integer adults;
    private Integer children;
    private Integer infants;

}
