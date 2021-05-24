package com.codesquad.airbnb.dto;

import com.codesquad.airbnb.domain.Category;
import com.codesquad.airbnb.domain.Location;

import java.util.List;

public class MainDTO {

    private List<Location> locations;

    private List<Category> categories;

    public List<Location> getLocations() {
        return locations;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setLocations(List<Location> locations) {
        this.locations = locations;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }
}
