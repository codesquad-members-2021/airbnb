package com.codesquad.coco.user;

import org.springframework.data.annotation.Id;

public class WishList {

    @Id
    private Long id;

    private Long userId;
    private Long roomsId;
    private boolean wish;

    public WishList(Long userId, Long roomsId, boolean wish) {
        this.userId = userId;
        this.roomsId = roomsId;
        this.wish = wish;
    }

    public boolean isWish() {
        return wish;
    }

    public Long getId() {
        return id;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getRoomsId() {
        return roomsId;
    }
}
