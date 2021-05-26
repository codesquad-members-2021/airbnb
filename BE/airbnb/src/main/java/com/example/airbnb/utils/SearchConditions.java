package com.example.airbnb.utils;

public class SearchConditions {

    private String location;
    private String checkin;
    private String checkout;
    private Integer adults;
    private Integer children;
    private Integer infants;

    public SearchConditions(String location, String checkin, String checkout, Integer adults, Integer children, Integer infants) {
        this.location = location;
        this.checkin = checkin;
        this.checkout = checkout;
        this.adults = adults;
        this.children = children;
        this.infants = infants;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCheckin() {
        return checkin;
    }

    public void setCheckin(String checkin) {
        this.checkin = checkin;
    }

    public String getCheckout() {
        return checkout;
    }

    public void setCheckout(String checkout) {
        this.checkout = checkout;
    }

    public Integer getAdults() {
        return adults;
    }

    public void setAdults(Integer adults) {
        this.adults = adults;
    }

    public Integer getChildren() {
        return children;
    }

    public void setChildren(Integer children) {
        this.children = children;
    }

    public Integer getInfants() {
        return infants;
    }

    public void setInfants(Integer infants) {
        this.infants = infants;
    }

    @Override
    public String toString() {
        return "SearchConditions{" +
                "location='" + location + '\'' +
                ", checkin='" + checkin + '\'' +
                ", checkout='" + checkout + '\'' +
                ", adults=" + adults +
                ", children=" + children +
                ", infants=" + infants +
                '}';
    }
}
