package mj.airbnb.domain.accommodation;

import java.math.BigDecimal;

public class Accommodation {

    private Long id;
    private String name;
    private int maxPeople;
    private String type;
    private int numOfBed;
    private int numOfBathroom;
    private BigDecimal price;
    private String address;

    public Accommodation() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNumOfBed() {
        return numOfBed;
    }

    public String getAddress() {
        return address;
    }

    public void setNumOfBed(int numOfBed) {
        this.numOfBed = numOfBed;
    }

    public int getNumOfBathroom() {
        return numOfBathroom;
    }

    public void setNumOfBathroom(int numOfBathroom) {
        this.numOfBathroom = numOfBathroom;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
