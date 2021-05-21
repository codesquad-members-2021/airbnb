package airbnb.dto;

import airbnb.domain.City;

public class CityResponse {

    private final Long id;
    private final String name;
    private final String image;
    private final int distance;

    private CityResponse(Builder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.image = builder.image;
        this.distance = builder.distance;
    }

    public static class Builder {

        private final Long id;
        private final String name;

        private String image;
        private int distance = 10;

        public Builder(Long id, String name) {
            this.id = id;
            this.name = name;
        }

        public Builder image(String image) {
            this.image = image;
            return this;
        }

        public Builder distance(int distance) {
            this.distance = distance;
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

    public int getDistance() {
        return distance;
    }

    public static CityResponse of(City city, String imageUrl) {
        return new CityResponse.Builder(city.getId(), city.getName())
                .image(imageUrl).build();
    }
}
