package airbnb.domain;

public class Location {

    private int latitude;
    private int longitude;

    public Location(int latitude, int longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public int getLatitude() {
        return latitude;
    }

    public int getLongitude() {
        return longitude;
    }
}
