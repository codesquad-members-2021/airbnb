package airbnb.dto;

import airbnb.domain.City;
import airbnb.domain.Location;
import com.fasterxml.jackson.annotation.JsonProperty;

public class CityResponse {

    private final Long id;
    private final String name;
    private final String image;

    @JsonProperty(value = "distance")
    private final long travelTime;

    private CityResponse(Builder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.image = builder.image;
        this.travelTime = builder.travelTime;
    }

    public static class Builder {

        private final Long id;
        private final String name;

        private String image;
        private long travelTime;

        public Builder(Long id, String name) {
            this.id = id;
            this.name = name;
        }

        public Builder image(String image) {
            this.image = image;
            return this;
        }

        public Builder travelTime(long travelTime) {
            this.travelTime = travelTime;
            return this;
        }

        public CityResponse build() {
            return new CityResponse(this);
        }
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public long getTravelTime() {
        return travelTime;
    }

    public static CityResponse of(City city, String imageUrl, Location location) {
        return new Builder(city.getId(), city.getName())
                .image(imageUrl).travelTime(location.calculatorTravelTime(city.getLocation())).build();
    }
}
