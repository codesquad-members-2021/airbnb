package airbnb.domain;

public class Location {

    private double latitude;
    private double longitude;
    private static final double STRAIGHT_ANGLE = 180.0;

    public Location(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public long calculatorTravelTime(Location location) {
        double theta = this.longitude - location.longitude;
        double distance = Math.sin(deg2rad(this.latitude)) * Math.sin(deg2rad(location.latitude))
                + Math.cos(deg2rad(this.latitude)) * Math.cos(deg2rad(location.latitude)) * Math.cos(deg2rad(theta));
        return Math.round(convertToKilometer(distance));
    }

    private double deg2rad(double degree) {
        return (degree * Math.PI / STRAIGHT_ANGLE);
    }

    private double rad2deg(double radian) {
        return (radian * STRAIGHT_ANGLE / Math.PI);
    }

    private double convertToKilometer(double distance) {
        return (rad2deg(Math.acos(distance)) * 60 * 1.1515 * 1.609344);
    }
}
