package com.enolj.airbnb.web.dto;

public class WishesResponseDTO {

    private final Long id;
    private final String name;
    private final int charge;
    private final boolean wish;
    private final double grade;

    public WishesResponseDTO(Long id, String name, int charge, boolean wish, double grade) {
        this.id = id;
        this.name = name;
        this.charge = charge;
        this.wish = wish;
        this.grade = grade;
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

    public boolean isWish() {
        return wish;
    }

    public double getGrade() {
        return grade;
    }
}
