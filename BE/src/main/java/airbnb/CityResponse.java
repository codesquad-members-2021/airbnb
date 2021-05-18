package airbnb;

public class CityResponse {
    private Long id;
    private String name;
    private String image;
    private int distance;

    public CityResponse(Long id, String name, String image, int distance) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.distance = distance;
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


