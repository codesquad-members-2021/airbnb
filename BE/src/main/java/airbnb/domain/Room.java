package airbnb.domain;

import org.springframework.data.annotation.Id;

import java.util.List;

public class Room {

    @Id
    private Long id;
    private int price;
    private String title;
    private String description;
    private RoomDetail roomDetail;
    private Tax tax;
    private List<Image> images;
    private int maxPeopleCount;

    private Room(Builder builder) {
        this.id = builder.id;
        this.price = builder.price;
        this.title = builder.title;
        this.description = builder.description;
        this.roomDetail = builder.roomDetail;
        this.tax = builder.tax;
        this.maxPeopleCount = builder.maxPeopleCount;
    }

    public static class Builder {

        private final Long id;

        private int price;
        private String title;
        private String description;
        private RoomDetail roomDetail;
        private Tax tax;
        private int maxPeopleCount;

        public Builder(Long id) {
            this.id = id;
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

        public Builder roomDetail(RoomDetail roomDetail) {
            this.roomDetail = roomDetail;
            return this;
        }

        public Builder tax(Tax tax) {
            this.tax = tax;
            return this;
        }

        public Builder maxPeopleCount(int maxPeopleCount) {
            this.maxPeopleCount = maxPeopleCount;
            return this;
        }

        public Room build() {
            return new Room(this);
        }
    }

    public Long getId() {
        return id;
    }

    public int getPrice() {
        return price;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public RoomDetail getRoomDetail() {
        return roomDetail;
    }

    public Tax getTax() {
        return tax;
    }

    public List<Image> getImages() {
        return images;
    }

    public int getMaxPeopleCount() {
        return maxPeopleCount;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }
}
