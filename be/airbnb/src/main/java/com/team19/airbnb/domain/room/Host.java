package com.team19.airbnb.entity.room;

public class Host {

    private String hostName;
    private String hostImage;

    Host(String hostName, String hostImage) {
        this.hostName = hostName;
        this.hostImage = hostImage;
    }

    public static Host create(String hostName, String hostImage) {
        return new Host(hostName, hostImage);
    }

    public String getHostName() {
        return hostName;
    }

    public String getHostImage() {
        return hostImage;
    }
}
