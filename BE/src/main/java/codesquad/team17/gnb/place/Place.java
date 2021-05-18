package codesquad.team17.gnb.place;

public class Place {
    private Long id;
    private String name;

    private Location location;

    private double star;
    private double reviewCount;

    private Long hostId;
    private int maximumNumberOfPeople;
    private String description;
    private int price;

    public Place(Builder builder) {
        this.id = builder.id;
        this.name = builder.name;
        this.location = builder.location;
        this.star = builder.star;
        this.reviewCount = builder.reviewCount;
        this.hostId = builder.hostId;
        this.maximumNumberOfPeople = builder.maximumNumberOfPeople;
        this.description = builder.description;
        this.price = builder.price;
    }

    public static class Builder {
        private Long id;
        private String name;

        private Location location;

        private double star;
        private double reviewCount;

        private Long hostId;
        private int maximumNumberOfPeople;
        private String description;
        private int price;

        public Builder() {
        }

        public Builder id(Long id) {
            this.id = id;
            return this;
        }

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder location(Location location) {
            this.location = location;
            return this;
        }

        public Builder star(double star) {
            this.star = star;
            return this;
        }

        public Builder reviewCount(double reviewCount) {
            this.reviewCount = reviewCount;
            return this;
        }

        public Builder hostId(Long hostId) {
            this.hostId = hostId;
            return this;
        }

        public Builder maximumNumberOfPeople(int maximumNumberOfPeople) {
            this.maximumNumberOfPeople = maximumNumberOfPeople;
            return this;
        }

        public Builder description(String description) {
            this.description = description;
            return this;
        }

        public Builder price(int price) {
            this.price = price;
            return this;
        }

        public Place build() {
            return new Place(this);
        }
    }
}
