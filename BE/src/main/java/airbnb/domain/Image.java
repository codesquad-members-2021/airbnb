package airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;

public class Image {

    @Id
    private Long id;
    private String url;

    @Column(value = "image_type_id")
    private Long imageTypeId;

    public Image(Long id, String url, Long imageTypeId) {
        this.id = id;
        this.url = url;
        this.imageTypeId = imageTypeId;
    }

    public Long getId() {
        return id;
    }

    public String getUrl() {
        return url;
    }

    public Long getImageTypeId() {
        return imageTypeId;
    }
}
