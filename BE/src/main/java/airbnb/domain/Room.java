package airbnb.domain;

import org.springframework.data.annotation.Id;

public class Room {

    @Id
    private Long id;
    private int price;
    private String title;
    private String description;
    private RoomDetail roomDetail;
    private Tax tax;

    public Room(Long id, int price, String title, String description, RoomDetail roomDetail, Tax tax) {
        this.id = id;
        this.price = price;
        this.title = title;
        this.description = description;
        this.roomDetail = roomDetail;
        this.tax = tax;
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
}
