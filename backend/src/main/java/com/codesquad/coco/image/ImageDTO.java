package com.codesquad.coco.image;

public class ImageDTO {

    private String url;
    private String type;

    public ImageDTO(String url, String type) {
        this.url = url;
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public String getType() {
        return type;
    }
}
