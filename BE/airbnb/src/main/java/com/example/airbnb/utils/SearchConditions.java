package com.example.airbnb.utils;

public class SearchConditions {

    private String location;
    private String checkin;
    private String checkout;
    private Integer adults;
    private Integer children;
    private Integer infants;

    public SearchConditions() {
    }

    public SearchConditions(String location, String checkin, String checkout, Integer adults, Integer children, Integer infants) {
        this.location = location;
        this.checkin = checkin;
        this.checkout = checkout;
        this.adults = adults;
        this.children = children;
        this.infants = infants;
    }

    public int peopleCount() {
        if (this.getAdults()+this.getChildren() >= 1) {
            return this.getAdults()+this.getChildren();
        }
        return 2;// 0,0,0 으로 조건이 들어오면 2명으로 검색
    }

    private boolean isPeopleCountValidate() {

        if (0 >= this.getAdults()) {
            return false;
        }
        if (0 >= this.getChildren()) {
            return false;
        }
        if (0 >= this.getInfants()) {
            return false;
        }

        return true;
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
