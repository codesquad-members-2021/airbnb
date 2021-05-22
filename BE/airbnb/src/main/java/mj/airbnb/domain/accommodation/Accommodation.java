package mj.airbnb.domain.accommodation;
import java.util.HashMap;
import java.util.Map;

public class Accommodation {

    private Long id;
    private String name;
    private Integer maxPeople;
    private String type;
    private Integer numOfBed;
    private Integer numOfBathroom;
    private Integer price;
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

    public Integer getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(Integer maxPeople) {
        this.maxPeople = maxPeople;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getNumOfBed() {
        return numOfBed;
    }

    public String getAddress() {
        return address;
    }

    public void setNumOfBed(Integer numOfBed) {
        this.numOfBed = numOfBed;
    }

    public Integer getNumOfBathroom() {
        return numOfBathroom;
    }

    public void setNumOfBathroom(Integer numOfBathroom) {
        this.numOfBathroom = numOfBathroom;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
