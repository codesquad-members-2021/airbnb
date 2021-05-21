package airbnb.dto;

public class CityRequest {

    private final Long id;
    private final String name;
    private final String image;
    private final int distance;

    public CityRequest(Builder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.image = builder.image;
        this.distance = builder.distance;
    }

    public static class Builder {

        private final Long id;

        private String name;
        private String image;
        private int distance;

        public Builder(Long id) {
            this.id = id;
        }

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder image(String image) {
            this.image = image;
            return this;
        }

        public Builder distance(int distance) {
            this.distance = distance;
            return this;
        }

        public CityRequest build() {
            return new CityRequest(this);
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


}
