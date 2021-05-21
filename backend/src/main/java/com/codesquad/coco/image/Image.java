package com.codesquad.coco.image;

import org.springframework.data.annotation.Id;

public class Image {

    @Id
    private Long id;

    private String url;
    private String type;

    public Image(String url, String type) {
        this.url = url;
        this.type = type;
    }

    public Image(Long id, String url, String type) {
        this.id = id;
        this.url = url;
        this.type = type;
    }

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
