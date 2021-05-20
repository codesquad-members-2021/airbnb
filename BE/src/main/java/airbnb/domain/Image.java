package airbnb.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Embedded;

public class Image {

    @Id
    private Long id;
    private String url;

    @Column(value = "image_type_id")
    private Long imageTypeId;

    @Embedded.Nullable
    private ImageClassId imageClassId;


    public Image(Long id, String url, Long imageTypeId, ImageClassId imageClassId) {
        this.id = id;
        this.url = url;
        this.imageTypeId = imageTypeId;
        this.imageClassId = imageClassId;
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

    public ImageClassId getImageClassId() {
        return imageClassId;
    }
}
