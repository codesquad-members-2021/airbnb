package com.team19.airbnb.domain.room;

public enum RoomType {

    ENTIRE_PLACE("집전체"),
    PRIVATE_ROOM("개인실"),
    HOTEL_ROOM("호텔객실"),
    SHARED_ROOM("다인실");

    private final String korean;

    RoomType(String korean) {
        this.korean = korean;
    }

    public String getKorean() {
        return korean;
    }
}
