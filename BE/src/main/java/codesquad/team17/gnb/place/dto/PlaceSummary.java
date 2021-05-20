package codesquad.team17.gnb.place.dto;

import codesquad.team17.gnb.place.domain.Location;
import codesquad.team17.gnb.place.domain.Option;
import codesquad.team17.gnb.place.domain.Place;


public class PlaceSummary {
    private final Long id;
    private final String imageUrl;
    private final Location location;
    private final String name;
    private final Option option;
    private final double star;
    private final int reviewCount;
    private final int price;

    public PlaceSummary(Place place) {
        this.id = place.getId();
        this.imageUrl = place.getImageUrl();
        this.location = place.getLocation();
        this.name = place.getName();
        this.option = place.getOption();
        this.star = place.getStar();
        this.reviewCount = place.getReviewCount();
        this.price = place.getPrice();
    }

    public Long getId() {
        return id;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public Location getLocation() {
        return location;
    }

    public String getName() {
        return name;
    }

    public Option getOption() {
        return option;
    }

    public double getStar() {
        return star;
    }

    public int getReviewCount() {
        return reviewCount;
    }

    public int getPrice() {
        return price;
    }
}
