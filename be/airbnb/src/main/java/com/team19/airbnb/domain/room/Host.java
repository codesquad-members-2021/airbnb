package com.team19.airbnb.domain.room;

//host는 별도의 테이블 필요할 듯 나중에 refactoring 할 떄...
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
