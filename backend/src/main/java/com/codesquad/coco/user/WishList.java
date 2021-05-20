package com.codesquad.coco.user;

import com.codesquad.coco.rooms.model.Rooms;
import org.springframework.data.annotation.Id;

public class WishList {

    @Id
    private Long id;

    private User user;
    private Rooms rooms;

    public WishList(Long id, User user, Rooms rooms) {
        this.id = id;
        this.user = user;
        this.rooms = rooms;
    }
}
