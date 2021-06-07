package com.enolj.airbnb.web.dto;

import com.enolj.airbnb.domain.house.House;

public class WishResponseDTO {

    private final Long id;
    private final String name;
    private final int charge;
    private final double grade;

    public WishResponseDTO(Long id, String name, int charge, double grade) {
        this.id = id;
        this.name = name;
        this.charge = charge;
        this.grade = grade;
    }

    public static WishResponseDTO createWishResponseDTO(House house) {
        return new WishResponseDTO(house.getId(), house.getName(), house.getCharge(), house.getGrade());
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getCharge() {
        return charge;
    }

    public double getGrade() {
        return grade;
    }
}
