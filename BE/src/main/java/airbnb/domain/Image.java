package airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;

public class Image {

    @Id
    private Long id;
    private String url;

    @Column(value = "image_type")
    private ImageType imageType;

    public Image(Long id, String url, ImageType imageType) {
        this.id = id;
        this.url = url;
        this.imageType = imageType;
    }

    public Long getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public ImageType getImageType() {
        return imageType;
    }
}
