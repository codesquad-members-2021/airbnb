package airbnb.dto;

import airbnb.domain.RoomDetail;
import airbnb.domain.Tax;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RoomsResponse {

    private final Long roomId;
    private final int price;
    private final String title;
    private final String description;
    private final Host host;
    private final ImageResponse images;
    private final int grade;
    private final int reviewCount;
    private final Tax tax;

    @JsonProperty(value = "detail")
    private final RoomDetail roomDetail;

    private RoomsResponse(Builder builder) {
        this.roomId = builder.roomId;
        this.price = builder.price;
        this.title = builder.title;
        this.description = builder.description;
        this.host = builder.host;
        this.images = builder.images;
        this.grade = builder.grade;
        this.reviewCount = builder.reviewCount;
        this.tax = builder.tax;
        this.roomDetail = builder.roomDetail;
    }

    public static class Builder {
        private Long roomId;
        private int price;
        private String title;
        private String description;
        private ImageResponse images;
        private int grade;
        private int reviewCount;
        private Tax tax;
        private Host host;
        private RoomDetail roomDetail;

        public Builder roomId(Long roomId) {
            this.roomId = roomId;
            return this;
        }

        public Builder price(int price) {
            this.price = price;
            return this;
        }

        public Builder title(String title) {
            this.title = title;
            return this;
        }

        public Builder description(String description) {
            this.description = description;
            return this;
        }

        public Builder images(ImageResponse images) {
            this.images = images;
            return this;
        }

        public Builder grade(int grade) {
            this.grade = grade;
            return this;
        }

        public Builder reviewCount(int reviewCount) {
            this.reviewCount = reviewCount;
            return this;
        }

        public Builder tax(Tax tax) {
            this.tax = tax;
            return this;
        }

        public Builder host(Host host) {
            this.host = host;
            return this;
        }

        public Builder roomDetail(RoomDetail roomDetail) {
            this.roomDetail = roomDetail;
            return this;
        }

        public RoomsResponse build() {
            return new RoomsResponse(this);
        }
    }
}
