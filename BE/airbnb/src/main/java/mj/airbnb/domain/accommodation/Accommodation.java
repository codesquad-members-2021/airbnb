package mj.airbnb.domain.accommodation;


import org.springframework.data.annotation.Id;

import java.util.HashMap;
import java.util.Map;

public class Accommodation {

    @Id
    private Long id;
    private String name;
    private Integer maxPeople;
    private String type;
    private Integer numOfBed;
    private Integer numOfBathroom;
    private Integer cost;
    private String address;

    public Accommodation() {
    }

    public Map<String, Object> toMap() {
        Map<String, Object> values = new HashMap<>();
        values.put("id", id);
        values.put("name", name);
        values.put("max_people", maxPeople);
        values.put("type", type);
        values.put("num_of_bed", numOfBed);
        values.put("num_of_bathroom", numOfBathroom);
        values.put("cost", cost);
        values.put("address", address);

        return values;
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

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Accommodation{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", maxPeople=" + maxPeople +
                ", type='" + type + '\'' +
                ", numOfBed=" + numOfBed +
                ", numOfBathroom=" + numOfBathroom +
                ", cost=" + cost +
                '}';
    }
}
