package codesquad.team17.gnb.place.dto;

import codesquad.team17.gnb.place.domain.Location;

public class LocationDto {
    private final String city;
    private final String district;
    private final String address1;
    private final String address2;

    private final double latitude;
    private final double longitude;

    public LocationDto(Location location) {
        this.city = location.getCity();
        this.district = location.getDistrict();
        this.address1 = location.getAddress1();
        this.address2 = location.getAddress2();
        this.latitude = location.getLatitude();
        this.longitude = location.getLongitude();
    }

    public String getCity() {
        return city;
    }

    public String getDistrict() {
        return district;
    }

    public String getAddress1() {
        return address1;
    }

    public String getAddress2() {
        return address2;
    }

    public double getLatitude() {
        return latitude;
    }

    public double getLongitude() {
        return longitude;
    }
}
