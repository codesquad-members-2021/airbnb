package codesquad.team17.gnb.place.dto;

import codesquad.team17.gnb.place.domain.Place;

public class PlaceSummary {
    private final Long id;
    private final String imageUrl;
    private final LocationDto location;
    private final String name;
    private final OptionDto options;
    private final double star;
    private final int reviewCount;
    private final int price;

    public PlaceSummary(Place place) {
        this.id = place.getId();
        this.imageUrl = place.getImageUrl();
        this.location = new LocationDto(place.getLocation());
        this.name = place.getName();
        this.options = new OptionDto(place.getOption());
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

    public LocationDto getLocation() {
        return location;
    }

    public String getName() {
        return name;
    }

    public OptionDto getOptions() {
        return options;
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
