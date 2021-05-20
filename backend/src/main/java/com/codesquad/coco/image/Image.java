package com.codesquad.coco.image;

import com.codesquad.coco.rooms.model.Rooms;
import org.springframework.data.annotation.Id;

public class Image {

    @Id
    private Long id;

    private String url;
    private String type;
    private Rooms rooms;

    public Image(Long id, String url, String type, Rooms rooms) {
        this.id = id;
        this.url = url;
        this.type = type;
        this.rooms = rooms;
    }
}
