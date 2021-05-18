package codesquad.team17.gnb.place;

public class Location {
    private String city;
    private String district;
    private String address1;
    private String address2;

    private double latitude;
    private double longitude;

    private Location(Builder builder) {
        this.city = builder.city;
        this.district = builder.district;
        this.address1 = builder.address1;
        this.address2 = builder.address2;
        this.latitude = builder.latitude;
        this.longitude = builder.longitude;
    }

    public static class Builder {
        private String city;
        private String district;
        private String address1;
        private String address2;

        private double latitude;
        private double longitude;

        public Builder() {
        }

        public Builder city(String city) {
            this.city = city;
            return this;
        }

        public Builder district(String district) {
            this.district = district;
            return this;
        }

        public Builder address1(String address1) {
            this.address1 = address1;
            return this;
        }

        public Builder address2(String address2) {
            this.address2 = address2;
            return this;
        }

        public Builder latitude(double latitude) {
            this.latitude = latitude;
            return this;
        }

        public Builder longitude(double longitude) {
            this.longitude = longitude;
            return this;
        }

        public Location build() {
            return new Location(this);
        }
    }
}
